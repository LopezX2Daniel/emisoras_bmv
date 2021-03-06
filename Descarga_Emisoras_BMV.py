import requests
from bs4 import BeautifulSoup as bs
import json
import time
import mysql.connector as server

urls = {'capitales': 'https://www.bmv.com.mx/es/Grupo_BMV/Informacion_de_emisora/_rid/541/_mto/3/_mod/doSearch?idTipoMercado=CGEN_CAPIT&idTipoInstrumento=CGEN_ELAC&idEmision=&idTipoEmpresa=&idSector=&idSubsector=&idRamo=&idSubramo',
        'tracs':'https://www.bmv.com.mx/es/Grupo_BMV/Informacion_de_emisora/_rid/541/_mto/3/_mod/doSearch?idTipoMercado=CGEN_CAPIT&idTipoInstrumento=CGEN_ELTRA&idTipoEmpresa=&idSector=&idSubsector=&idRamo=&idSubramo',
        'fibras':'https://www.bmv.com.mx/es/Grupo_BMV/Informacion_de_emisora/_rid/541/_mto/3/_mod/doSearch?idTipoMercado=CGEN_CAPIT&idTipoInstrumento=CGEN_ELFI&idTipoEmpresa=&idSector=&idSubsector=&idRamo=&idSubramo'}
headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36'}

def Conversion():
    json_contenido = []
    for llave, valor in urls.items():
        respuesta_web = requests.get(valor, headers=headers, timeout=60)
        sopadecoditos = bs(respuesta_web.text, "html.parser")
        contenido = str(sopadecoditos)
        contenido = str(contenido)
        contenido = contenido.replace("\n", "")
        contenido = contenido.replace("for(;;);", "")
        contenido = contenido.replace("(", "")
        contenido = contenido.replace(")", "")
        var_temporal = json.loads(contenido)
        json_contenido += (var_temporal["response"]["resultado"])
    return json_contenido
lista_emisoras = Conversion()

lista_emisoras_serie = []

for lista in lista_emisoras:
    claveEmisora = lista["claveEmisora"]
    idEmisora = lista["idEmisora"]
    razonSocial = lista["razonSocial"]
    print(claveEmisora)

    def solicitud_web():
        series_por_emisora = {}
        web = requests.get(f"https://www.bmv.com.mx/es/emisoras/estadisticas/{claveEmisora}-{idEmisora}", headers=headers, timeout=60)
        sopa_web = bs(web.content, "html.parser")
        busqueda = sopa_web.find("body").find_all("form")[0].find_all("label")
        
        for label in busqueda:
            serie_muestra = label.get_text()
            if "Series" != serie_muestra:
                idEmision_muestra = label["for"]
                idEmision_muestra = str(idEmision_muestra)
                idEmision_muestra = idEmision_muestra.replace("rbSeries_", "")
                series_por_emisora[serie_muestra] = idEmision_muestra
        return series_por_emisora
    series_por_emisora = solicitud_web()
    
    
    lista_emisoras_serie.append({"claveEmisora":claveEmisora, "idEmisora":idEmisora, "razonSocial":razonSocial, "series":series_por_emisora})
