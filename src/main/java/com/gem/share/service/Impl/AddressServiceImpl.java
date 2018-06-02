package com.gem.share.service.Impl;

import com.gem.share.dao.AddressMapper;
import com.gem.share.entity.Address;
import com.gem.share.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AddressServiceImpl implements AddressService{
    @Autowired
    private AddressMapper addressMapper;
    @Override
    public Address selectByAddressId(int address_id) {
        return null;
    }

    @Override
    public boolean insertAddress(Address address) {
        return false;
    }

    @Override
    public boolean deleteByAddressId(int address_id) {
        return false;
    }

    @Override
    public boolean updateByAddressId(int address_int) {
        return false;
    }

    @Override
    public Address selectAddress() {
        return addressMapper.selectAddress();
    }

    @Override
    public Address selectAddressByCountry(String country) {
        return addressMapper.selectAddressByCountry(country);
    }

    @Override
    public Address selectAddressByProvince(String province) {
        return addressMapper.selectAddressByProvince(province);
    }

    @Override
    public Address selectAddressByCity(String city) {
        return addressMapper.selectAddressByCity(city);
    }
}
