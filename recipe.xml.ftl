<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />


<#if generateActivityLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
</#if>

<#if generateKotlin>
    <instantiate from="root/src/app_package/MVPActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pageName}/view/${pageName}Activity.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${pageName}/view/${pageName}Activity.kt" />

    <instantiate from="root/src/app_package/MVPContract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pageName}/contract/${pageName}Contract.kt" />

    <instantiate from="root/src/app_package/MVPPresenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pageName}/presenter/${pageName}Presenter.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${pageName}/presenter/${pageName}Presenter.kt" />

    <instantiate from="root/src/app_package/MVPModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pageName}/model/${pageName}Model.kt" />
<#else>
<instantiate from="root/src/app_package/MVPActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pageName}/view/${pageName}Activity.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${pageName}/view/${pageName}Activity.java" />

    <instantiate from="root/src/app_package/MVPContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pageName}/contract/${pageName}Contract.java" />

    <instantiate from="root/src/app_package/MVPPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pageName}/presenter/${pageName}Presenter.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${pageName}/presenter/${pageName}Presenter.java" />

    <instantiate from="root/src/app_package/MVPModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${pageName}/model/${pageName}Model.java" />
</#if>


</recipe>
