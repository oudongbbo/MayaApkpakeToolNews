.class public Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# static fields
.field private static final FILE_CHOOSER_RESULT_CODE:I = 0x2710


# instance fields
.field private mCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

.field private mContext:Landroid/content/Context;

.field private uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uploadMessageAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/maya/sdk/framework/web/SdkWebCallback;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->mCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    .line 38
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method private openImageChooserActivity()V
    .locals 3

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Image Chooser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, v0

    .line 243
    :goto_1
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_3

    .line 244
    invoke-virtual {p0, p1, p2, p3}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->onActivityResultAboveL(IILandroid/content/Intent;)V

    goto :goto_2

    .line 245
    :cond_3
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_4

    .line 246
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 247
    iput-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    :cond_4
    :goto_2
    return-void
.end method

.method public onActivityResultAboveL(IILandroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_5

    .line 254
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_4

    .line 259
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 262
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    .line 263
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 264
    invoke-virtual {p2, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 265
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    if-eqz p1, :cond_3

    const/4 p2, 0x1

    .line 269
    new-array p2, p2, [Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, p2, p3

    goto :goto_1

    :cond_3
    move-object p2, v1

    goto :goto_1

    :cond_4
    move-object p2, v0

    .line 272
    :goto_1
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 273
    iput-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6765\u81ea\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\u7684\u63d0\u793a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    const/4 v3, 0x0

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$1;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 77
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5bf9\u8bdd\u6846"

    .line 97
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$3;

    invoke-direct {v3, p0, p4}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$3;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;Landroid/webkit/JsResult;)V

    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$2;

    invoke-direct {v3, p0, p4}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$2;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;Landroid/webkit/JsResult;)V

    .line 103
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$4;

    invoke-direct {v1, p0, p4}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$4;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$5;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$5;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 5

    .line 139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5bf9\u8bdd\u6846"

    .line 142
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 144
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 146
    invoke-virtual {v1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$7;

    invoke-direct {v4, p0, p5, v1}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$7;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$6;

    invoke-direct {v3, p0, p5}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$6;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;Landroid/webkit/JsPromptResult;)V

    .line 153
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$8;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$8;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 174
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 179
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 181
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->mCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    invoke-interface {p1, p2}, Lcom/maya/sdk/framework/web/SdkWebCallback;->loading(I)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 187
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 192
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 224
    iput-object p2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    .line 225
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->openImageChooserActivity()V

    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 203
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->openImageChooserActivity()V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 209
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->openImageChooserActivity()V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 216
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->openImageChooserActivity()V

    return-void
.end method
