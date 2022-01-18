
        var developer = {
            firstName: 'Amber',
            lastName: 'Hubbard',
            languages: ['C#',
                'JavaScript'
            ],  
            emailAddress: 'amber@myemail.com'
        };
        function displayDeveloper(developer) {
            var emailAddressElem = document.getElementById('emailAddress');
            var firstNameElem = document.getElementById('firstName');
            var lastNameElem = document.getElementById('lastName');
            var developerNameElem = document.getElementById('developerName');
            var languagesList = document.getElementById('developerLanguages');

            emailAddressElem.value = developer.emailAddress;
            firstNameElem.value = developer.firstName;
            lastNameElem.value = developer.lastName;
            developerNameElem.innerText = `${developer.firstName} ${developer.lastName}`;
            languagesList.innerHTML = '';
            developer.languages.forEach(lang => {
                var node = document.createElement('li');
                node.appendChild(document.createTextNode(lang));
                languagesList.appendChild(node);
            });

        }

        function addSkill() {
                var skillInput = document.getElementById('skill');

                if (skillInput.value == '') {return;}

                developer.languages.push(skillInput.value);
                displayDeveloper(developer);

                skillInput.value = '';
                
            }

            function saveDeveloper() {
                var firstNameElem = document.getElementById('firstName');
                var lastNameElem = document.getElementById('lastName');

                developer.firstName = firstNameElem.value;
                developer.lastName = lastNameElem.value;
                displayDeveloper(developer);

                var viewDiv = document.getElementById('viewDeveloper');
                var editDiv = document.getElementById('editDeveloper');

                editDiv.style.display = 'none';
                viewDiv.style.display = 'block';
                
            }

            function toggleEdit() {
                var viewDiv = document.getElementById('viewDeveloper');
                var editDiv = document.getElementById('editDeveloper');

                editDiv.style.display = 'block';
                viewDiv.style.display = 'none';
            }

        
        displayDeveloper(developer);
        toggleEdit();

    