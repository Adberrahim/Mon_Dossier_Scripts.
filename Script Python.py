import time

from selenium import webdriver

from selenium.webdriver.common.by import By

from selenium.webdriver.chrome.service import Service

from webdriver_manager.chrome import ChromeDriverManager

from selenium.webdriver.common.keys import Keys

# Initialisation du navigateur avec webdriver-manager

service = Service(ChromeDriverManager().install())

driver = webdriver.Chrome(service=service)





    # Accéder à la page

driver.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")

    # Attendre 3 secondes

time.sleep(3)

driver.maximize_window() #agrandir le navigateur

time.sleep(2)

user_name = driver.find_element(By.NAME, "username")

user_name.send_keys("Admin")

time.sleep(2)

pass_word = driver.find_element(By.NAME, "password")

pass_word.send_keys("admin123")

time.sleep(3)

log_in = driver.find_element(By.CLASS_NAME, "oxd-button")

log_in.click()

time.sleep(3)

driver.close()

driver.quit()

print("Done!")