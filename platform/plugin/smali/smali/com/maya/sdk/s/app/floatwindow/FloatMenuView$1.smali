.class Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
.field final synthetic a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 175
    sget-object v0, Lcom/maya/sdk/s/core/a/a;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/a/a;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 185
    sget-object v0, Lcom/maya/sdk/s/core/a/a;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/a/a;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->d(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 195
    sget-object v0, Lcom/maya/sdk/s/core/a/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V

    goto :goto_2

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/a/a;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->e(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 205
    sget-object v0, Lcom/maya/sdk/s/core/a/a;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V

    goto :goto_3

    .line 208
    :cond_6
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/a/a;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->f(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 215
    sget-object v0, Lcom/maya/sdk/s/core/a/a;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V

    goto :goto_4

    .line 218
    :cond_8
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/a/a;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->g(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 224
    sget-object v0, Lcom/maya/sdk/s/core/a/a;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 225
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    const-string v1, "maya_tips_url_not_exit"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V

    goto :goto_5

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/a/a;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->h(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_e

    .line 234
    sget-object p1, Lcom/maya/sdk/s/core/a;->e:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 236
    iget-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {p1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "maya_tips_switch_no_callback"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    .line 237
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 242
    :cond_c
    sget-object p1, Lcom/maya/sdk/s/core/a;->g:Landroid/content/Context;

    if-nez p1, :cond_d

    .line 243
    iget-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {p1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "maya_tips_need_context"

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    .line 244
    invoke-static {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 250
    :cond_d
    invoke-static {}, Lcom/maya/sdk/s/app/a;->a()Lcom/maya/sdk/s/app/a;

    move-result-object p1

    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;->a:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/a;->e:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-virtual {p1, v0, v1}, Lcom/maya/sdk/s/app/a;->userSwitch(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    :cond_e
    return-void
.end method
