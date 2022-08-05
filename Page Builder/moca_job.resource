<resource>
    <id>moca_job</id>
    <name>MOCA Job</name>
    <description>A job is a command that is configured to run in the background while MOCA server is operating.</description>
    <properties>
        <property name="job_id" alias="jobId" pk="true" description="The primary key. This is the primary identifier for the given job."/>
        <property name="role_id" type="string" description="This job will run as part of this role in a clustered environment."/>
        <property name="name" type="string" description="The name of the job. This is not unique and is used to easier find a job."/>
        <property name="command" type="string" description="The MOCA command line this job should execute whe running."/>
        <property name="enabled" type="boolean" description="Controls whether this job is enabled."/>
        <property name="overlap" type="boolean" description="The name of the log file the standard output will go to."/>
        <property name="log_file" type="string" description="The trace leve for the execution of this job."/>
        <property name="trace_level" type="string" description="The primary key. This is the primary identifier for the given job."/>
        <property name="timer" type="int" description="If a timer job, the time delay between runs."/>
        <property name="start_delay" type="string" description="If a timer job, the start delay before the first run."/>
        <property name="schedule" type="string" description="If a schedule-type job, the cron-style schedule of this job."/>
        <property name="grp_nam" type="string" description="Group name."/>
        <property name="type" type="string" description="The type of job -- cron or timer."/>
    </properties>

    <actions>
        <action type="list" ref="varlistJobs"/>
        <action type="add" ref="varAddJob"/>
        <action type="edit" ref="varEditJob"/>
        <action type="delete" ref="varDeleteJob"/>
    </actions>
</resource>
