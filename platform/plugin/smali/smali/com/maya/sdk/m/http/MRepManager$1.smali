.class Lcom/maya/sdk/m/http/MRepManager$1;
.super Ljava/lang/Object;
.source "MRepManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/http/MRepManager;->handleInit(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/http/MRepManager;

.field final synthetic val$callback:Lcom/maya/sdk/framework/http/HttpCallBack;

.field final synthetic val$dataObj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/http/MRepManager;Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/http/MRepManager;

    .line 92
    iput-object p1, p0, Lcom/maya/sdk/m/http/MRepManager$1;->this$0:Lcom/maya/sdk/m/http/MRepManager;

    iput-object p2, p0, Lcom/maya/sdk/m/http/MRepManager$1;->val$dataObj:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/maya/sdk/m/http/MRepManager$1;->val$callback:Lcom/maya/sdk/framework/http/HttpCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/maya/sdk/m/http/MRepManager$1;->this$0:Lcom/maya/sdk/m/http/MRepManager;

    iget-object v1, p0, Lcom/maya/sdk/m/http/MRepManager$1;->val$dataObj:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/maya/sdk/m/http/MRepManager$1;->val$callback:Lcom/maya/sdk/framework/http/HttpCallBack;

    # invokes: Lcom/maya/sdk/m/http/MRepManager;->handleInitUpdate(Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/m/http/MRepManager;->access$000(Lcom/maya/sdk/m/http/MRepManager;Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 102
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/maya/sdk/m/http/MRepManager$1;->this$0:Lcom/maya/sdk/m/http/MRepManager;

    iget-object v1, p0, Lcom/maya/sdk/m/http/MRepManager$1;->val$dataObj:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/maya/sdk/m/http/MRepManager$1;->val$callback:Lcom/maya/sdk/framework/http/HttpCallBack;

    # invokes: Lcom/maya/sdk/m/http/MRepManager;->handleInitUpdate(Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/m/http/MRepManager;->access$000(Lcom/maya/sdk/m/http/MRepManager;Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 97
    return-void
.end method
