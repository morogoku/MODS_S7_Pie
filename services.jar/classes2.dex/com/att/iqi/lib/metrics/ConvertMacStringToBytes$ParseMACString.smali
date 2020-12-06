.class Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseMACString"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->a:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_a

    move p1, v0

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :goto_e
    iput p1, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->b:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->c:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->d:I

    return-void
.end method

.method private a()I
    .registers 4

    iget v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->c:I

    iget v1, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->b:I

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->a:Ljava/lang/String;

    iget v1, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    return v0

    :cond_19
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public nextByteValue()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->a()I

    move-result v0

    if-ltz v0, :cond_39

    const/4 v1, 0x0

    :goto_7
    if-ltz v0, :cond_11

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->a()I

    move-result v0

    goto :goto_7

    :cond_11
    const/16 v0, 0xff

    if-gt v1, v0, :cond_31

    iget v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->d:I

    iget v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->d:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2f

    iget v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->c:I

    iget v2, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->b:I

    if-lt v0, v2, :cond_27

    goto :goto_2f

    :cond_27
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Bad Mac value"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_2f
    int-to-byte v0, v1

    return v0

    :cond_31
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Bad Mac value"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Bad Mac value"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
