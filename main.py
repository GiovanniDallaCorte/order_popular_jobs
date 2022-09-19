from sqlalchemy import create_engine,text
import pandas as pd

engine = create_engine('postgresql://postgres:postgres@localhost:5432/postgis_32_sample')

def order_popular_jobs(radius,user_long,user_lat):
    with engine.connect() as connection:
        radius = 10000
        user_long = "-53.4529641"
        user_lat = "-24.9554507"

        #Colocar filtro somente para jobs ativos ou fazer o historico como um todo???

        query = text(f"SELECT  idjob, count(*) as totalJobs \
                FROM public.userlocation  \
                WHERE ST_DWithin(geom, ST_MakePoint({user_long},{user_lat})::geography, {radius}) group by idjob order by  totalJobs desc;")

        df =  pd.read_sql(query,connection)
    return df
    

popular_jobs_on_locate = order_popular_jobs(1,1,1)

print(popular_jobs_on_locate)


