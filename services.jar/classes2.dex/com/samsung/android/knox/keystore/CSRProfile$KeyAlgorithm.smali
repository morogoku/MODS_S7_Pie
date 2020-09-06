.class public final enum Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;
.super Ljava/lang/Enum;
.source "CSRProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/CSRProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

.field public static final enum ECC:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

.field public static final enum RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    const-string v1, "RSA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    new-instance v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    const-string v1, "ECC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->ECC:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->RSA:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->ECC:Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->$VALUES:[Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->$VALUES:[Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/keystore/CSRProfile$KeyAlgorithm;

    return-object v0
.end method
