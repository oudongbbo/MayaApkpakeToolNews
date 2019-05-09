.class final enum Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;
.super Ljava/lang/Enum;
.source "RelativePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HorizontalPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

.field public static final enum ALIGN_LEFT:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

.field public static final enum ALIGN_RIGHT:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

.field public static final enum CENTER:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

.field public static final enum LEFT:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

.field public static final enum RIGHT:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->CENTER:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    new-instance v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    const-string v1, "LEFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->LEFT:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    new-instance v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    const-string v1, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->RIGHT:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    new-instance v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    const-string v1, "ALIGN_LEFT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->ALIGN_LEFT:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    new-instance v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    const-string v1, "ALIGN_RIGHT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->ALIGN_RIGHT:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    sget-object v1, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->CENTER:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->LEFT:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->RIGHT:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->ALIGN_LEFT:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->ALIGN_RIGHT:Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    aput-object v1, v0, v6

    sput-object v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->$VALUES:[Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    return-object v0
.end method

.method public static values()[Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;
    .locals 1

    .line 20
    sget-object v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->$VALUES:[Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    invoke-virtual {v0}, [Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/maya/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;

    return-object v0
.end method
