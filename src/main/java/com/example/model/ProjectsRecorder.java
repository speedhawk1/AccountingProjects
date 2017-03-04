package com.example.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class ProjectsRecorder extends BaseModel {

    private Integer id;
    private String project;
    private String startTime;
    private String endTime;
    private Double scales;
    private String accountant;
}