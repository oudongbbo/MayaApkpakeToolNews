.class Lcom/maya/sdk/framework/web/webview/WebViewBase$1;
.super Ljava/lang/Object;
.source "WebViewBase.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/web/webview/WebViewBase;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/web/webview/WebViewBase;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/web/webview/WebViewBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/web/webview/WebViewBase;

    .line 112
    iput-object p1, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase$1;->this$0:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 115
    if-eqz p2, :cond_0

    .line 117
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "mDefaultScale"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 118
    .local v0, "defaultScale":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "defaultScale":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 126
    :cond_0
    :goto_0
    return-void
.end method
