.class Lcom/android/server/VibratorService$PatternInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternInfo"
.end annotation


# instance fields
.field private engine:[I

.field private frequency:I

.field private pattern:[J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/VibratorService$PatternInfo;-><init>()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/VibratorService$PatternInfo;)[J
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$PatternInfo;->pattern:[J

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/VibratorService$PatternInfo;[J)[J
    .registers 2

    iput-object p1, p0, Lcom/android/server/VibratorService$PatternInfo;->pattern:[J

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/server/VibratorService$PatternInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/VibratorService$PatternInfo;->frequency:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/VibratorService$PatternInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/VibratorService$PatternInfo;->frequency:I

    return p1
.end method

.method static synthetic access$4000(Lcom/android/server/VibratorService$PatternInfo;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$PatternInfo;->engine:[I

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/server/VibratorService$PatternInfo;[I)[I
    .registers 2

    iput-object p1, p0, Lcom/android/server/VibratorService$PatternInfo;->engine:[I

    return-object p1
.end method
