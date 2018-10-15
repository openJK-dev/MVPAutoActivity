package ${activityPackageName};

import ${superClassFqcn};
import android.os.Bundle;

import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;

import ${packageName}.R;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

public class ${pageName}Activity extends ${superClass} implements ${pageName}Contract.View{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});
<#include "../../../../common/jni_code_usage.java.ftl">
    }
<#include "../../../../common/jni_code_snippet.java.ftl">
}
