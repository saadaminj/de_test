SELECT a.Patient_Name,a.Patient_Gender,a.Patient_Phone,a.Province,c.Patient_Name as partner_name,c.Patient_Gender as partner_gender FROM patient_info a,patient_info c,patient_partner_mapping b where a.Patient_id=b.Patient_id and c.Patient_id=b.Partner_Id ;


SELECT * from patient_info a ,patient_partner_mapping b where a.Patient_id=b.Patient_id and b.Patient_Partner_ID=NULL;




SELECT count(Patient_ID),Province from patient_info GROUP by 2;



SELECT count(Patient_ID),SUBSTRING(Created_at, 3, 4) from patient_info GROUP by 2