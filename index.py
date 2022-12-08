import streamlit as st
import mysql.connector

# Initialize connection.
# Uses st.experimental_singleton to only run once.
@st.experimental_singleton
def init_connection():
    return mysql.connector.connect(**st.secrets["mysql"])

conn = init_connection()

# Perform query.
# Uses st.experimental_memo to only rerun when the query changes or after 10 min.
@st.experimental_memo(ttl=600)
def run_query(query):
    with conn.cursor() as cur:
        cur.execute(query)
        return cur.fetchall()


#Header 
st.title("Efficient Ambulance Delivery System")
st.write("The system is meant to be used by ambulance companies. The inputs provided by the user would be location of pickup based on input zip code, specialization that the patient needs treatment from, and testing that the patient may require. The system will take the current zip code location of the emergency vehicle, as well as the specialization and testing needed. Based on this data, it will return a table listing the facilities that have the needed specialization and testing in order based on distance.")
# Miltuselect test 

st.subheader("Locate The Ideal Provider Catered To Your Needs")

# Body ------->>>>>>>

# --->  SPEACIALIZATION Returns Hospital Name 
spec_type = st.multiselect(
        "Select the type of specialization required.",
        ['Emergency Medicine','Orthopedic Surgery','Trauma Surgery','Neurology','Neurosurgery',
        'Cardiology','Cardiothoracic Surgery','Ophthalmology','Ophthalmic Surgery','Vascular Surgery','Pediatric Surgery'])

var_spec = ''.join(spec_type)   # cast from list to string
  
if(var_spec != ""):
    spec_querry = "SELECT facility_id_table.f_name, facility_id_table.f_address from facility_id_table join facility_specialization_table on facility_id_table.f_id = facility_specialization_table.f_id join specialization_id_table on specialization_id_table.spec_id = facility_specialization_table.spec_id where specialization ='" + var_spec + "';"
    rows_spec = run_query(spec_querry) 
    
    #st.table(rows_spec)
    

# ----> SPEACIALIZATION ENDS

# ----> TEST TYPE returns hospital
test_type = st.multiselect(
        "Select the type of Test required.",
        ['X-ray','Fluoroscopy','CT Scan','MRI','PET scan','Ultrasound'])


var_test = ''.join(test_type)

if(var_test != ""):
    test_querry = "SELECT facility_id_table.f_name from facility_id_table join facility_test_table on facility_id_table.f_id = facility_test_table.f_id join test_id_table on test_id_table.test_id = facility_test_table.test_id where test = '" + var_test + "' ;"
    rows_test = run_query(test_querry) 
    
    #st.table(rows_test)
    # Print results for Specialization and adress
    # for rows_test in rows_test:
    #     st.caption(f"{rows_test[0]}, ||  Located at :  { rows_test[1]}")


# TEST TYPE ENDS------->

#Zip Code Search

zip_code = st.number_input("Please enter Zip code",0)
t_zip = str(zip_code)
if(test_type != "" and spec_type != ""):
    if(zip_code>10000):
        st.write("Combination of closest Facilities according to Specialization and Test ")
        checkbox_querry = "SELECT facility_id_table.f_name, facility_id_table.f_address, facility_id_table.f_zip, availability_table.traffic, availability_table.emergency, availability_table.gen, availability_table.op_rooms from facility_id_table join facility_specialization_table on facility_id_table.f_id = facility_specialization_table.f_id join specialization_id_table on specialization_id_table.spec_id = facility_specialization_table.spec_id join facility_test_table on facility_id_table.f_id = facility_test_table.f_id join test_id_table on test_id_table.test_id = facility_test_table.test_id join availability_table on facility_id_table.f_id = availability_table.f_id where specialization = '" + var_spec + "' and test = '"+ var_test +"'order by ABS(facility_id_table.f_zip-"+t_zip+"); "
        #checkbox_querry = "SELECT facility_id_table.f_name, specialization_id_table.specialization , test_id_table.test from facility_id_table join facility_specialization_table on facility_id_table.f_id = facility_specialization_table.f_id join specialization_id_table on specialization_id_table.spec_id = facility_specialization_table.spec_id join facility_test_table on facility_id_table.f_id = facility_test_table.f_id join test_id_table on test_id_table.test_id = facility_test_table.test_id where specialization = '" + var_spec + "' and test = '"+ var_test +"'order by ABS(facility_id_table.f_zip-"+t_zip+");"
        rows_check = run_query(checkbox_querry)
        st.table(rows_check)
        
    else:
        st.write("Combination of Specialization and Test (ADD zip to refine your search ) ")
        


    # ZIP ------->>>>> ends here 
        

#------> Availibility querry with name of facility <--------------------------------->
# st.subheader("Find Additional Information on desired Facility ")

# facility_type = st.multiselect(
#         "Select a Facility.",
#         [   'New York Presbyterian Hospital',
#             'NYC Health + Hospitals / Bellevue',
#             'NYC Health + Hospitals / Metropolitan',
#             'NYC Health + Hospitals / Times Square',
#             'Lenox Hill Hospital',
#             'NYU Langone Health',
#             'NYU Langone Hospital Brooklyn',
#             'NYC Health + Hospitals / Harlem',
#             'NYC Health + Hospitals / Lincoln',
#             'Maimonides Medical Center',
#             'The Mount Sinai Hospital',
#             'Mount Sinai Beth Israel',
#             'Mount Sinai West',
#             'NYC Health + Hospitals / Coney Island'
# ])

# var_facility = ''.join(facility_type)
# if(var_facility != ""):
#     facility_querry = "Select facility_id_table.f_name, availability_table.emergency, availability_table.gen, availability_table.op_rooms from availability_table join facility_id_table on facility_id_table.f_id = availability_table.f_id Where f_name = '"+ var_facility +"';"
#     rows_facility = run_query(facility_querry) 
#     # Print results for Specialization and adress

#     st.table(rows_facility)
   #------> Availibility querry ENDS <--------------------------------->




# Body ------->>>>>>>







#       TEST ENDS 

#---->>FOR Both Test and specialization
# check_box = st.checkbox("Get location of facility with desired combination of Test and Specialization")
# if(test_type != " " and spec_type != " "):
    
#     checkbox_querry = "SELECT facility_id_table.f_name, specialization_id_table.specialization , test_id_table.test from facility_id_table join facility_specialization_table on facility_id_table.f_id = facility_specialization_table.f_id join specialization_id_table on specialization_id_table.spec_id = facility_specialization_table.spec_id join facility_test_table on facility_id_table.f_id = facility_test_table.f_id join test_id_table on test_id_table.test_id = facility_test_table.test_id where specialization = '" + var_spec + "' and test = '"+ var_test +"';"
#     rows_check = run_query(checkbox_querry) 
    
#     # Print results for Specialization and adress
#     for rows_check in rows_check:
#         st.caption(f"{rows_check[0]}, ||  Located at :  { rows_check[1]}")

# "SELECT facility_id_table.f_name, facility_id_table.f_address, facility_id_table.f_zip, availability_table.traffic, availability_table.emergency, availability_table.gen, availability_table.op_rooms from facility_id_table join facility_specialization_table on facility_id_table.f_id = facility_specialization_table.f_id join specialization_id_table on specialization_id_table.spec_id = facility_specialization_table.spec_id join facility_test_table on facility_id_table.f_id = facility_test_table.f_id join test_id_table on test_id_table.test_id = facility_test_table.test_id join availability_table on facility_id_table.f_id = availability_table.f_id where specialization = '" + var_spec + "' and test = '"+ var_test +"'order by ABS(facility_id_table.f_zip-"+t_zip+"); "