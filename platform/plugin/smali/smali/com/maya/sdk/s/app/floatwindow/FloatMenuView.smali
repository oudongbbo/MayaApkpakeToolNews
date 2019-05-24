.class public Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static b:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private c:Landroid/content/Context;

.field private d:Lcom/maya/sdk/s/app/floatwindow/a;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;-><init>(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a:Landroid/view/View$OnClickListener;

    .line 47
    iput-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    .line 48
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->getPopWindow()Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    new-instance p2, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;

    invoke-direct {p2, p0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView$1;-><init>(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)V

    iput-object p2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a:Landroid/view/View$OnClickListener;

    .line 54
    iput-object p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->getPopWindow()Landroid/view/View;

    .line 56
    invoke-direct {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 0

    .line 285
    invoke-static {p1, p2, p3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 75
    new-instance v0, Lcom/maya/sdk/s/app/floatwindow/a;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->d:Lcom/maya/sdk/s/app/floatwindow/a;

    .line 77
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->e:Landroid/view/View;

    const-string v1, "maya_float_user"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    .line 78
    invoke-direct {p0, v1, v2, v3}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->f:Landroid/widget/RelativeLayout;

    .line 79
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->e:Landroid/view/View;

    const-string v1, "maya_float_msg"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    .line 80
    invoke-direct {p0, v1, v2, v3}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->g:Landroid/widget/RelativeLayout;

    .line 81
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->e:Landroid/view/View;

    const-string v1, "maya_float_gift"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    .line 82
    invoke-direct {p0, v1, v2, v3}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->i:Landroid/widget/RelativeLayout;

    .line 83
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->e:Landroid/view/View;

    const-string v1, "maya_float_cs"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    .line 84
    invoke-direct {p0, v1, v2, v3}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->j:Landroid/widget/RelativeLayout;

    .line 85
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->e:Landroid/view/View;

    const-string v1, "maya_float_bbs"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    .line 86
    invoke-direct {p0, v1, v2, v3}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->h:Landroid/widget/RelativeLayout;

    .line 87
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->e:Landroid/view/View;

    const-string v1, "maya_float_game"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    .line 88
    invoke-direct {p0, v1, v2, v3}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->l:Landroid/widget/RelativeLayout;

    .line 89
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->e:Landroid/view/View;

    const-string v1, "maya_float_changeuser"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    .line 90
    invoke-direct {p0, v1, v2, v3}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->k:Landroid/widget/RelativeLayout;

    const-string v0, "1"

    .line 93
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/s/core/b/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->d:Lcom/maya/sdk/s/app/floatwindow/a;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/maya/sdk/s/core/a/a;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->d:Lcom/maya/sdk/s/app/floatwindow/a;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/maya/sdk/s/core/a/a;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 111
    :goto_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->d:Lcom/maya/sdk/s/app/floatwindow/a;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/maya/sdk/s/core/a/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 118
    :goto_3
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->d:Lcom/maya/sdk/s/app/floatwindow/a;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/a;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/maya/sdk/s/core/a/a;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    :goto_4
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->d:Lcom/maya/sdk/s/app/floatwindow/a;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/a;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/maya/sdk/s/core/a/a;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 126
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    :goto_5
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->d:Lcom/maya/sdk/s/app/floatwindow/a;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/a;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/maya/sdk/s/core/a/a;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 133
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    :goto_6
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->h:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->d:Lcom/maya/sdk/s/app/floatwindow/a;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic b(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->g:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->i:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->j:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic f(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->h:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic g(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->l:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->k:Landroid/widget/RelativeLayout;

    return-object p0
.end method


# virtual methods
.method public getPopWindow()Landroid/view/View;
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string v1, "maya_float_popwindow"

    const-string v2, "layout"

    .line 67
    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->c:Landroid/content/Context;

    invoke-direct {p0, v1, v2, v3}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->e:Landroid/view/View;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->e:Landroid/view/View;

    return-object v0
.end method
