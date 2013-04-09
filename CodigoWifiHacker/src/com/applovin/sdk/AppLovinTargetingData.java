package com.applovin.sdk;

import android.location.Location;

public abstract interface AppLovinTargetingData
{
  public static final String EDUCATION_BACHELORS = "bachelors";
  public static final String EDUCATION_COLLEGE = "college";
  public static final String EDUCATION_DOCTORAL = "doctoral";
  public static final String EDUCATION_HIGH_SCHOOL = "high_school";
  public static final String EDUCATION_IN_COLLEGE = "in_college";
  public static final String EDUCATION_MASTERS = "masters";
  public static final String EDUCATION_NONE = "none";
  public static final String EDUCATION_OTHER = "other";
  public static final String ETHNICITY_ASIAN = "asian";
  public static final String ETHNICITY_BLACK = "black";
  public static final String ETHNICITY_HISPANIC = "hispanic";
  public static final String ETHNICITY_MIXED = "mixed";
  public static final String ETHNICITY_NATIVE_AMERICAN = "native_american";
  public static final String ETHNICITY_NONE = "none";
  public static final String ETHNICITY_OTHER = "other";
  public static final String ETHNICITY_WHITE = "white";
  public static final char GENDER_FEMALE = 102;
  public static final char GENDER_MALE = 109;
  public static final String MARITAL_STATUS_DIVORCED = "divorced";
  public static final String MARITAL_STATUS_MARRIED = "married";
  public static final String MARITAL_STATUS_NONE = "none";
  public static final String MARITAL_STATUS_SINGLE = "single";
  public static final String MARITAL_STATUS_WIDOWED = "widowed";

  public abstract void clearData();

  public abstract void putExtra(String paramString1, String paramString2);

  public abstract void setBirthYear(int paramInt);

  public abstract void setCarrier(String paramString);

  public abstract void setCountry(String paramString);

  public abstract void setEducation(String paramString);

  public abstract void setEmail(String paramString);

  public abstract void setEmails(String[] paramArrayOfString);

  public abstract void setEthnicity(String paramString);

  public abstract void setFirstName(String paramString);

  public abstract void setGender(char paramChar);

  public abstract void setIncome(String paramString);

  public abstract void setInterests(String[] paramArrayOfString);

  public abstract void setKeywords(String[] paramArrayOfString);

  public abstract void setLanguage(String paramString);

  public abstract void setLocation(Location paramLocation);

  public abstract void setMaritalStatus(String paramString);

  public abstract void setPhoneNumber(String paramString);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.AppLovinTargetingData
 * JD-Core Version:    0.5.3
 */