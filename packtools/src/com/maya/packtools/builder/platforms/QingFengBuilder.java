package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

public class QingFengBuilder extends BaseBuilder {
    public QingFengBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.u8.sdk.U8Application", manifest);
    }


}
