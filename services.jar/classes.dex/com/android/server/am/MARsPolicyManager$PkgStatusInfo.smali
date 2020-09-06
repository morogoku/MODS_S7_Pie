.class Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PkgStatusInfo"
.end annotation


# instance fields
.field private autorun:I

.field private currentLevel:I

.field private disableType:I

.field private fasType:I

.field private forceStopReason:I

.field private forceStopTime:J

.field private freecessState:I

.field private freezedReason:Ljava/lang/String;

.field private freezedTime:J

.field private freezedTimeForLevelUp:[J

.field private isAutorunTriggeredReason:I

.field private isDisabled:Z

.field private isFASEnabled:Z

.field private isFreezed:Z

.field private isLcdOnPolicy:Z

.field private isSendPackageRestart:I

.field private isolatedPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private maxLevel:I

.field private name:Ljava/lang/String;

.field private possibleLevel:I

.field private state:I

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field private uid:I

.field private unfreezedCount:I

.field private unfreezedReason:Ljava/lang/String;

.field private unfreezedTime:J

.field private userId:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;II)V
    .registers 8

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    iput p4, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->autorun:I

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isAutorunTriggeredReason:I

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopReason:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedTime:J

    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedTime:J

    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedReason:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedReason:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    iput v2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isolatedPids:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isLcdOnPolicy:Z

    iput v2, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freecessState:I

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedTimeForLevelUp:[J

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->autorun:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->autorun:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isAutorunTriggeredReason:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isAutorunTriggeredReason:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopReason:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopReason:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedTime:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isolatedPids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isolatedPids:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isLcdOnPolicy:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isLcdOnPolicy:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freecessState:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freecessState:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedCount:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedCount:I

    return p1
.end method

.method static synthetic access$3808(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 3

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedCount:I

    return v0
.end method

.method static synthetic access$3810(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 3

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedCount:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)[J
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedTimeForLevelUp:[J

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;[J)[J
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedTimeForLevelUp:[J

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    return v0
.end method
