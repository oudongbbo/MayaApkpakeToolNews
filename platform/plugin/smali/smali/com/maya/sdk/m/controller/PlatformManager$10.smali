.class Lcom/maya/sdk/m/controller/PlatformManager$10;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager;->doInitS(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/PlatformManager;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/PlatformManager;

    .line 1142
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$10;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .line 1145
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$10;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onInitFail(Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$10;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onInitSuccess()V

    .line 1150
    return-void
.end method
