.class public final enum Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;
.super Ljava/lang/Enum;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/EnterpriseDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnterpriseKeyVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

.field public static final enum ENTERPRISE_KEY_VERSION_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    const-string v1, "ENTERPRISE_KEY_VERSION_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->ENTERPRISE_KEY_VERSION_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->ENTERPRISE_KEY_VERSION_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->$VALUES:[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->$VALUES:[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    return-object v0
.end method
