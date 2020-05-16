.class Lcom/android/systemui/volume/D;
.super Ljava/lang/Object;
.source "D.java"


# static fields
.field public static BUG:Z

.field public static ENG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/systemui/volume/D;->ENG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
