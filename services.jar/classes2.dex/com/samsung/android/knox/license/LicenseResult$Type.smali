.class public final enum Lcom/samsung/android/knox/license/LicenseResult$Type;
.super Ljava/lang/Enum;
.source "LicenseResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/license/LicenseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/license/LicenseResult$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

.field public static final enum UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;


# instance fields
.field status:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "ELM_ACTIVATION"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "ELM_VALIDATION"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "ELM_DEACTIVATION"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "KLM_ACTIVATION"

    const/4 v3, 0x3

    const/16 v6, 0x320

    invoke-direct {v0, v1, v3, v6}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "KLM_VALIDATION"

    const/4 v6, 0x4

    const/16 v7, 0x321

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "KLM_DEACTIVATION"

    const/4 v7, 0x5

    const/16 v8, 0x322

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    const-string v1, "UNDEFINED"

    const/4 v8, 0x6

    const/16 v9, -0x64

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/android/knox/license/LicenseResult$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/knox/license/LicenseResult$Type;

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    aput-object v1, v0, v8

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/knox/license/LicenseResult$Type;->status:I

    return-void
.end method

.method public static fromKlmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;
    .registers 3

    invoke-static {}, Lcom/samsung/android/knox/license/LicenseResult$Type;->values()[Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/license/-$$Lambda$LicenseResult$Type$V8nPP-Bp5Z8UwO4Q85-_NcpxibE;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/license/-$$Lambda$LicenseResult$Type$V8nPP-Bp5Z8UwO4Q85-_NcpxibE;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->UNDEFINED:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object v0
.end method

.method static synthetic lambda$fromKlmStatus$0(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z
    .registers 3

    iget v0, p1, Lcom/samsung/android/knox/license/LicenseResult$Type;->status:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Type;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/license/LicenseResult$Type;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/license/LicenseResult$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object v0
.end method
