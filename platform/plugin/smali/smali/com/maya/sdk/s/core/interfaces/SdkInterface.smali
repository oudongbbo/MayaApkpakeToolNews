.class public interface abstract Lcom/maya/sdk/s/core/interfaces/SdkInterface;
.super Ljava/lang/Object;
.source "SdkInterface.java"


# virtual methods
.method public abstract init(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStop()V
.end method

.method public abstract setUserLogoutCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
.end method

.method public abstract setUserSwitchCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
.end method

.method public abstract submitRoleInfo(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract userExit(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
.end method

.method public abstract userLogin(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
.end method

.method public abstract userLogout()V
.end method

.method public abstract userPay(Landroid/content/Context;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
.end method

.method public abstract userSwitch(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
.end method
