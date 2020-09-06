.class public Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BLjava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;

    invoke-direct {v0, p1}, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v1, p1

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_17

    :try_start_a
    invoke-virtual {v0}, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->nextByteValue()B

    move-result v2

    aput-byte v2, p0, v1
    :try_end_10
    .catch Ljava/security/InvalidParameterException; {:try_start_a .. :try_end_10} :catch_13

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catch_13
    move-exception v0

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    :cond_17
    return-void
.end method

.method public static convert([BLjava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_5

    invoke-static {p0, p1}, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes;->a([BLjava/lang/String;)V

    :cond_5
    return-void
.end method
