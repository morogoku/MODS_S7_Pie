.class public final enum Lcom/samsung/android/knox/license/LicenseResult$Status;
.super Ljava/lang/Enum;
.source "LicenseResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/license/LicenseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/license/LicenseResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Status;

.field public static final enum FAILURE:Lcom/samsung/android/knox/license/LicenseResult$Status;

.field public static final enum SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Status;

    const-string v1, "SUCCESS"

    const-string/jumbo v2, "success"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/license/LicenseResult$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Status;

    const-string v1, "FAILURE"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/license/LicenseResult$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->FAILURE:Lcom/samsung/android/knox/license/LicenseResult$Status;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/knox/license/LicenseResult$Status;

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Status;->FAILURE:Lcom/samsung/android/knox/license/LicenseResult$Status;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/knox/license/LicenseResult$Status;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromStatusString(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Status;
    .registers 2

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    iget-object v0, v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    goto :goto_f

    :cond_d
    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->FAILURE:Lcom/samsung/android/knox/license/LicenseResult$Status;

    :goto_f
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Status;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/license/LicenseResult$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/license/LicenseResult$Status;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/license/LicenseResult$Status;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Status;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/license/LicenseResult$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/license/LicenseResult$Status;

    return-object v0
.end method
