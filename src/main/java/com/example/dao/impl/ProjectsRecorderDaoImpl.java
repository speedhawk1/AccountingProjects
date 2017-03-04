package com.example.dao.impl;

import org.springframework.stereotype.Repository;

import com.example.dao.ProjectsRecorderDao;
import com.example.model.ProjectsRecorder;

@Repository
public class ProjectsRecorderDaoImpl extends GenericDaoImpl<ProjectsRecorder, Integer> implements ProjectsRecorderDao {}