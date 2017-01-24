package com.smallsell.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smallsell.mapper.UserMapper;

@Service
public class BaseService {
   @Autowired protected UserMapper userMapper;
}
