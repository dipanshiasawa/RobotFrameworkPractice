# Automation Practice

This is a Test Automation Project

### Prerequisites

These are some prerequisites for project to work properly:

* Download [Python](https://www.python.org/downloads/) from official website. If already downloaded, make sure it is 3.6.10 and above
* To chech python version, use `$ python --version` it should be **3.8.2**
* Upgrade chrome browser to latest
* If Python is already installed, make sure to upgrade pip
`$ python -m pip install --upgrade pip`

### Installation

For download and run the project

Clone the **test-repository** directory in a good location.

```
$ git clone https://github.com/dipanshiasawa/test-repository.git
```

Enter into the main directory **test-repository**
```
$ cd test-repository
```

Use pip to install all the dependancies listed in the **requirements.txt** file
```
$ pip install -r requirements.txt
```

### Execute the following command to run tests:
```
pabot --processes 4 -d Reports Tests
```
### Results
Results will be stored in "Reports" folder. To view them, open "reports.html" and "log.html" file in browser.


Note: Please do not hover mouse while running tests as it might fail the hover element cases.
#### Thanks
----


