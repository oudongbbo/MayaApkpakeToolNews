.class public Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;
.super Landroid/webkit/WebViewClient;
.source "SdkWebveiwClient.java"


# static fields
.field private static final MAILTO:Ljava/lang/String; = "mailto:"

.field private static final QQ:Ljava/lang/String; = "qq:"

.field private static final TEL:Ljava/lang/String; = "tel:"

.field private static final WEIXIN:Ljava/lang/String; = "weixin:"


# instance fields
.field private mCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/maya/sdk/framework/web/SdkWebCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/maya/sdk/framework/web/SdkWebCallback;

    .line 36
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    .line 39
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private handleAlipayWebUrl(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .line 169
    :try_start_0
    const-string v0, "scheme=(.*?);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 170
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 171
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 172
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "scheme":Ljava/lang/String;
    const-string v4, "package=(.*?);"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    move-object v0, v4

    .line 175
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    move-object v1, v4

    .line 176
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 177
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v4, "it":Landroid/content/Intent;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 181
    const-string v5, "intent"

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object p1, v5

    .line 183
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 184
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 185
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    :cond_1
    iget-object v5, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->checkApkExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    iget-object v5, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v5, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    const-string v6, "\u6ca1\u6709\u627e\u5230\u53ef\u7528\u7684\u5e94\u7528"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v0    # "p":Ljava/util/regex/Pattern;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "it":Landroid/content/Intent;
    :goto_0
    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private handleAppUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "it":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->checkApkExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    const-string v2, "\u6ca1\u6709\u627e\u5230\u53ef\u7528\u7684\u5e94\u7528."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 207
    :goto_0
    return-void
.end method

.method private openQQ(Ljava/lang/String;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, ""

    .line 150
    .local v1, "toastContent":Ljava/lang/String;
    const-string v1, "\u5df2\u590d\u5236QQ\u53f7\u7801\u5230\u526a\u8d34\u7248"

    .line 151
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->copyString2System(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v2, "imto://qq"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    const-string v4, "\u60a8\u7684\u624b\u673a\u672a\u5b89\u88c5\u624b\u673aQQ"

    invoke-virtual {p0, v3, v4}, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 140
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    invoke-interface {v0}, Lcom/maya/sdk/framework/web/SdkWebCallback;->loadFinish()V

    .line 144
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/framework/web/SdkWebCallback;->loadStart(Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    invoke-interface {v0, p3}, Lcom/maya/sdk/framework/web/SdkWebCallback;->loadError(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .line 123
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 124
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 45
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/LogUtil;->w(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 51
    const-string v1, "weixin://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {p0, p2}, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->handleAppUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 55
    :cond_0
    const-string v1, "alipay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-direct {p0, p2}, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->handleAppUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 59
    :cond_1
    const-string v1, "intent"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "alipay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-direct {p0, p2}, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->handleAlipayWebUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 63
    :cond_2
    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    :cond_3
    const-string v1, "qq:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "qq":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->openQQ(Ljava/lang/String;)V

    .line 75
    .end local v1    # "qq":Ljava/lang/String;
    goto :goto_1

    :cond_4
    const-string v1, "weixin:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 77
    const-string v1, "com.tencent.mm"

    .line 78
    .local v1, "wxPname":Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "wxNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->isInstallApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 80
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->launchApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    const-string v4, "\u5fae\u4fe1\u53f7\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f"

    invoke-static {v3, v2, v4}, Lcom/maya/sdk/framework/utils/CommonUtil;->copyString2System(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 83
    :cond_5
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    const-string v4, "\u672a\u5b89\u88c5\u5fae\u4fe1\uff0c\u65e0\u6cd5\u6253\u5f00"

    invoke-virtual {p0, v3, v4}, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    .end local v1    # "wxPname":Ljava/lang/String;
    .end local v2    # "wxNumber":Ljava/lang/String;
    :goto_0
    goto :goto_1

    :cond_6
    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 88
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 89
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    .local v2, "it":Landroid/content/Intent;
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "it":Landroid/content/Intent;
    goto :goto_1

    .line 97
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v1, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Referer"

    const-string v3, "https://syplay.mayauc.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p1, p2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    .end local v1    # "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 108
    :goto_1
    return v0

    .line 105
    :cond_8
    return v0
.end method

.method public showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    return-void
.end method
