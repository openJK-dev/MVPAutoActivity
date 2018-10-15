package ${activityPackageName}

import ${superClassFqcn}
import android.os.Bundle
import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter

import ${packageName}.R

class ${pageName}Activity : ${superClass}(),${pageName}Contract.View {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${activityLayoutName})

<#include "../../../../common/jni_code_usage.kt.ftl">
    }
<#include "../../../../common/jni_code_snippet.kt.ftl">
}
