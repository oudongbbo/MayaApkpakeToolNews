.class Lcom/maya/sdk/framework/web/webview/WebViewBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/web/webview/WebViewBase;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/framework/web/webview/WebViewBase;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/web/webview/WebViewBase;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase$1;->a:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 117
    :try_start_0
    const-class p1, Landroid/webkit/WebView;

    const-string p2, "mDefaultScale"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 121
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
