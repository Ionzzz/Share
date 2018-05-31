package com.gem.share.entity;

public class Address {
    private Integer addressId;

    private String country;

    private String provinice;

    private String city;

    private String county;

    private String detailAddress;

    public Address() {
    }

    @Override
    public String toString() {
        return "Address{" +
                "addressId=" + addressId +
                ", country='" + country + '\'' +
                ", provinice='" + provinice + '\'' +
                ", city='" + city + '\'' +
                ", county='" + county + '\'' +
                ", detailAddress='" + detailAddress + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Address address = (Address) o;

        if (addressId != null ? !addressId.equals(address.addressId) : address.addressId != null) return false;
        if (country != null ? !country.equals(address.country) : address.country != null) return false;
        if (provinice != null ? !provinice.equals(address.provinice) : address.provinice != null) return false;
        if (city != null ? !city.equals(address.city) : address.city != null) return false;
        if (county != null ? !county.equals(address.county) : address.county != null) return false;
        return detailAddress != null ? detailAddress.equals(address.detailAddress) : address.detailAddress == null;
    }

    @Override
    public int hashCode() {
        int result = addressId != null ? addressId.hashCode() : 0;
        result = 31 * result + (country != null ? country.hashCode() : 0);
        result = 31 * result + (provinice != null ? provinice.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (county != null ? county.hashCode() : 0);
        result = 31 * result + (detailAddress != null ? detailAddress.hashCode() : 0);
        return result;
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country == null ? null : country.trim();
    }

    public String getProvinice() {
        return provinice;
    }

    public void setProvinice(String provinice) {
        this.provinice = provinice == null ? null : provinice.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county == null ? null : county.trim();
    }

    public String getDetailAddress() {
        return detailAddress;
    }

    public void setDetailAddress(String detailAddress) {
        this.detailAddress = detailAddress == null ? null : detailAddress.trim();
    }
}