package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.dao.GenericDao;
import com.example.model.ProjectsRecorder;
import com.example.service.ProjectsRecorderService;

@Service
public class ProjectsRecorderServiceImpl extends GenericServiceImpl<ProjectsRecorder, Integer> implements ProjectsRecorderService {

    @Override
    @Autowired
    @Qualifier("projectsRecorderDaoImpl")
    public void setGenericDao(GenericDao<ProjectsRecorder, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}