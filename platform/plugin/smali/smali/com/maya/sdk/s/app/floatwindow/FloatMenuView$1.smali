.class Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;
.super Ljava/lang/Object;
.source "FloatMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    .line 170
    iput-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->maya_float_user:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$000(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 175
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_USERCENTER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$200(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_USERCENTER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->maya_float_msg:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$300(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 185
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_MESSAGE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$200(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_MESSAGE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->maya_float_gift:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$400(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 195
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_GIFT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$200(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V

    goto :goto_2

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_GIFT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->maya_float_cs:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$500(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 205
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_KEFU:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$200(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V

    goto :goto_3

    .line 208
    :cond_6
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_KEFU:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->maya_float_bbs:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$600(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 215
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_BBS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$200(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V

    goto :goto_4

    .line 218
    :cond_8
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_BBS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->maya_float_game:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$700(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 224
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_CENTER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 225
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$200(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V

    goto :goto_5

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_CENTER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->maya_float_changeuser:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$800(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_e

    .line 234
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkUserSwitchCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 236
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "maya_tips_switch_no_callback"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    .line 237
    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    return-void

    .line 242
    :cond_c
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 243
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "maya_tips_need_context"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    .line 244
    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    return-void

    .line 250
    :cond_d
    invoke-static {}, Lcom/maya/sdk/s/app/FMSdkCore;->getInstance()Lcom/maya/sdk/s/app/FMSdkCore;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->this$0:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    # getter for: Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->access$100(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/maya/sdk/s/core/SdkManager;->sdkUserSwitchCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/s/app/FMSdkCore;->userSwitch(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 277
    :cond_e
    return-void
.end method
