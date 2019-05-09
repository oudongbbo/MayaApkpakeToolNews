.class Lcom/maya/sdk/s/app/FMSdkCore$14;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore;->openUserNameAuth(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/FMSdkCore;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/FMSdkCore;

    .line 621
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$14;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 629
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 625
    return-void
.end method
