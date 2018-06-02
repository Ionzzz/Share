package com.gem.share.service;

import com.gem.share.entity.Address;

public interface AddressService {

    public Address selectByAddressId(int address_id);

    public boolean insertAddress(Address address);

    public boolean deleteByAddressId(int address_id);

    public boolean updateByAddressId(int address_int);

    public Address selectAddress();

    public Address selectAddressByCountry(String country);

    public Address selectAddressByProvince(String province);

    public Address selectAddressByCity(String city);

}
