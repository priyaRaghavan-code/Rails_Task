const empName = document.getElementById("empName");
const empAge = document.getElementById("empAge");
const empMobile = document.getElementById("empMobile");
const empGender = document.getElementById("empGender");
const empEmail = document.getElementById("empEmail");
const empSkills = document.getElementById("empSkills");
const empAddress = document.getElementById("empAddress");
const empID = document.getElementById("empID");
const empExp = document.getElementById("empExp");

document.getElementById("submitButton").addEventListener("click", () => {
  var emailRegEx =
    /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  var phoneNumRegEx = /^\d{10}$/;
  let empNameRes = empName.value;
  let empAgeRes = empAge.value;
  let empMobileRes = empMobile.value;
  let empGenderRes = empGender.value;
  let empEmailRes = empEmail.value;
  let empSkillsRes = empSkills.value;
  let empAddressRes = empAddress.value;
  let empIDRes = empID.value;
  let empExpRes = empExp.value;
  let bool = true;

  if (
    empNameRes === null ||
    empNameRes.length <= 1 ||
    empNameRes.length > 15 ||
    !isNumberCheck(empNameRes) ||
    !isSpecialChar(empNameRes) ||
    !isCapital(empNameRes)
  ) {
    document.getElementById("nameError").style.display = "block";
  } else {
    document.getElementById("nameError").style.display = "none";
  }

  if (empAgeRes <= 17 ||empAgeRes >= 70 || isNumberCheck(empAgeRes) || !isSpecialChar(empAgeRes)){
    document.getElementById("ageError").style.display = "block";
  } else {
    document.getElementById("ageError").style.display = "none";
  }

  if (!empMobileRes.match(phoneNumRegEx)) {
    document.getElementById("mobileError").style.display = "block";
    bool = false;
  } else {
    document.getElementById("mobileError").style.display = "none";
  }

  if (empGenderRes === "") {
    document.getElementById("genderError").style.display = "block";
  } else {
    document.getElementById("genderError").style.display = "none";
  }

  if (!empEmailRes.match(emailRegEx)) {
    document.getElementById("emailError").style.display = "block";
  } else {
    document.getElementById("emailError").style.display = "none";
  }

  if (empSkillsRes === null || !isNumberCheck(empSkillsRes)){
    document.getElementById("skillsError").style.display = "block";
  } else {
    document.getElementById("skillsError").style.display = "none";
  }

  if (empAddressRes === null){
    document.getElementById("addressError").style.display = "block";
  } else {
    document.getElementById("addressError").style.display = "none";
  }


  if (empIDRes === null || isNumberCheck(empIDRes) || !isSpecialChar(empIDRes)){
    document.getElementById("empIDError").style.display = "block";
  } else {
    document.getElementById("empIDError").style.display = "none";
  }

  if (empExpRes === null || isNumberCheck(empExpRes) || !isSpecialChar(empExpRes)){
    document.getElementById("expError").style.display = "block";
  } else {
    document.getElementById("expError").style.display = "none";
  }
 
});

function isNumberCheck(result) {
  for (let i = 0; i < result.length; i++) {
    if (!isNaN(result[i])) {
      console.log("Failed at Number");
      return false;
    }
  }
  return true;
}

function isSpecialChar(result) {
  const specialChars = ["-", "!", "~", "#", "$"];
  for (let i = 0; i < result.length; i++) {
    if (specialChars.includes(result[i])) {
      console.log("Failed at special");
      return false;
    }
  }
  return true;
}

function isCapital(result) {
  if (result.charAt(0) !== result.charAt(0).toUpperCase()) {
    return false;
  }
  return true;
}
