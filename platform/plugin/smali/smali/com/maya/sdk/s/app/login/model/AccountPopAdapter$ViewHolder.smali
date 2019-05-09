.class public Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AccountPopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private delete:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;


# direct methods
.method public constructor <init>(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    .line 99
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->this$0:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;

    .line 99
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 99
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;

    .line 99
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .line 99
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    return-object p1
.end method
