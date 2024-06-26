package com.newjeans.common.config;

// db 연결설정

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
//@MapperScan(basePackages={"com.example.demo.*","com.opengroupfw.fapp.*"}		//#-->	*dao 찾는 영역
@MapperScan(basePackages="com.newjeans.*"									//#-->	*dao 찾는 영역 (한개일때)
        ,sqlSessionFactoryRef="sqlSessionFactoryMysql")             		//#-->
@EnableTransactionManagement
public class DbConfigMysql {                                        

    final String datasourceName        = "datasourceMysql";         
    final String prefixName            = "spring.datasource.mysql"; 
    final String SqlSessionFactoryName = "sqlSessionFactoryMysql";
    final String SqlSessionName        = "sqlSessionMysql";       

    @Primary
    @Bean(name=datasourceName)
    @ConfigurationProperties(prefix=prefixName)
    public DataSource dataSource() {
        return DataSourceBuilder.create().build();
    }

    @Primary
    @Bean(name=SqlSessionFactoryName)
    public SqlSessionFactory sqlSessionFactory(@Qualifier(datasourceName) DataSource datasource
            , ApplicationContext applicationContext) throws Exception{
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(datasource);
        sqlSessionFactoryBean.setMapperLocations(
                applicationContext.getResources("classpath:/mybatis/mapper/mysql/**/*.xml"));	//#--> *mapper.xml 위치
        return sqlSessionFactoryBean.getObject();
    }

    @Primary
    @Bean(name=SqlSessionName)
    public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory){
        return new SqlSessionTemplate(sqlSessionFactory);
    }
}