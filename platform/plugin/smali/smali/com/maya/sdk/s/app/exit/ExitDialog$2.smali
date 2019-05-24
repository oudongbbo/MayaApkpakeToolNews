.class Lcom/maya/sdk/s/app/exit/ExitDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/exit/ExitDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/s/app/exit/ExitDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$2;->a:Lcom/maya/sdk/s/app/exit/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-object p2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$2;->a:Lcom/maya/sdk/s/app/exit/ExitDialog;

    invoke-static {p2}, Lcom/maya/sdk/s/app/exit/ExitDialog;->c(Lcom/maya/sdk/s/app/exit/ExitDialog;)Landroid/widget/RelativeLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 118
    iget-object p2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$2;->a:Lcom/maya/sdk/s/app/exit/ExitDialog;

    invoke-static {p2}, Lcom/maya/sdk/s/app/exit/ExitDialog;->d(Lcom/maya/sdk/s/app/exit/ExitDialog;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
