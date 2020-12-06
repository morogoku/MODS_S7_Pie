.class public Lcom/android/server/am/MARsPackageStatus;
.super Ljava/lang/Object;
.source "MARsPackageStatus.java"


# static fields
.field public static final ACTION_PACKAGE_RESTARTED_DEFAULT:I = 0x0

.field public static final ACTION_PACKAGE_RESTARTED_NOSEND:I = 0x2

.field public static final ACTION_PACKAGE_RESTARTED_SEND:I = 0x1

.field public static final FREECESS_STATE_DEFAULT:I = 0x1

.field public static final FREECESS_STATE_FREEZEABLE:I = 0x2

.field public static final FREECESS_STATE_FROZEN:I = 0x3

.field public static final PACKAGE_STATE_RESTRICT_AUTO:I = 0x1

.field public static final PACKAGE_STATE_RESTRICT_AUTO_DISABLED:I = 0x4

.field public static final PACKAGE_STATE_RESTRICT_AUTO_EXPIRED:I = 0x2

.field public static final REASON_AUTORUN_TRIGGERED_EMERGENCY_KILL_DEVELOPER:I = 0x4

.field public static final REASON_AUTORUN_TRIGGERED_EMERGENCY_KILL_NORMAL:I = 0x3

.field public static final REASON_AUTORUN_TRIGGERED_NORMAL:I = 0x0

.field public static final REASON_AUTORUN_TRIGGERED_RECENT_KILL:I = 0x2

.field public static final REASON_AUTORUN_TRIGGERED_SMART_MANAGER:I = 0x1


# instance fields
.field public activityCallCnt:D

.field public appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public autorun:I

.field public batteryUsage:D

.field public broadcastCallCnt:D

.field public canLevelUpToDisable:Z

.field public currentLevel:I

.field public disableTime:J

.field public disableType:I

.field public fasEnabledTime:J

.field public fasReason:Ljava/lang/String;

.field public fasType:I

.field public forceStopReason:I

.field public forceStopTime:J

.field public freecessState:I

.field public freezedReason:Ljava/lang/String;

.field public freezedTime:J

.field public freezedTimeForLevelUp:[J

.field public hasAppIcon:Z

.field public isAutorunTriggeredReason:I

.field public isDisabled:Z

.field public isFASEnabled:Z

.field public isFreezed:Z

.field public isLcdOnPolicy:Z

.field public isReportedbyFASTime:Z

.field public isReportedbyResetTime:Z

.field public isReportedbyRestriction:Z

.field public isReportedbyTrigger:Z

.field public isSendPackageRestart:I

.field public isolatedPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lastUsedTime:J

.field public maxLevel:I

.field public name:Ljava/lang/String;

.field public needUpdateTime:Z

.field public packageType:I

.field public providerCallCnt:D

.field public resetTime:J

.field public restrictionCnt:I

.field public restrictionCnt_Activity:I

.field public restrictionCnt_Broadcast:I

.field public restrictionCnt_Provider:I

.field public restrictionCnt_Service:I

.field public restrictionSkipCnt:I

.field public restrictionSkipCnt_Activity:I

.field public restrictionSkipCnt_Broadcast:I

.field public restrictionSkipCnt_Provider:I

.field public restrictionSkipCnt_Service:I

.field public runningWidgets:I

.field public sbike:I

.field public serviceCallCnt:D

.field public sharedUidName:Ljava/lang/String;

.field public skipReason:Ljava/lang/String;

.field public skipRestrictionReason:Ljava/lang/String;

.field public specialApp:I

.field public state:I

.field public triggerCnt:I

.field public triggerSkipCnt:I

.field public uds:I

.field public uid:I

.field public unfreezedCount:I

.field public unfreezedReason:Ljava/lang/String;

.field public unfreezedTime:J

.field public userId:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJIILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    iput-object p1, p0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    iput p6, p0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/MARsPackageStatus;->isolatedPids:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/android/server/am/MARsPackageStatus;->versionName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/MARsPackageStatus;->sharedUidName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/MARsPackageStatus;->state:I

    iput-wide p3, p0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->batteryUsage:D

    iput-object v1, p0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->forceStopTime:J

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->freezedTime:J

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->unfreezedTime:J

    iput-object v1, p0, Lcom/android/server/am/MARsPackageStatus;->freezedReason:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/MARsPackageStatus;->unfreezedReason:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isLcdOnPolicy:Z

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/am/MARsPackageStatus;->freecessState:I

    const/4 v5, 0x2

    new-array v5, v5, [J

    iput-object v5, p0, Lcom/android/server/am/MARsPackageStatus;->freezedTimeForLevelUp:[J

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->unfreezedCount:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->currentLevel:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->maxLevel:I

    iput-boolean v4, p0, Lcom/android/server/am/MARsPackageStatus;->canLevelUpToDisable:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/am/MARsPackageStatus;->isAutorunTriggeredReason:I

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    iput-object v1, p0, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/MARsPackageStatus;->skipRestrictionReason:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/am/MARsPackageStatus;->forceStopReason:I

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isFASEnabled:Z

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->fasType:I

    iput-object v1, p0, Lcom/android/server/am/MARsPackageStatus;->fasReason:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->fasEnabledTime:J

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isDisabled:Z

    iput v4, p0, Lcom/android/server/am/MARsPackageStatus;->disableType:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/am/MARsPackageStatus;->disableTime:J

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->triggerSkipCnt:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Activity:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Provider:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Broadcast:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Service:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Activity:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Provider:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Broadcast:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Service:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/MARsPackageStatus;->activityCallCnt:D

    iput-wide v1, p0, Lcom/android/server/am/MARsPackageStatus;->serviceCallCnt:D

    iput-wide v1, p0, Lcom/android/server/am/MARsPackageStatus;->broadcastCallCnt:D

    iput-wide v1, p0, Lcom/android/server/am/MARsPackageStatus;->providerCallCnt:D

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isReportedbyResetTime:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isReportedbyFASTime:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isReportedbyTrigger:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isReportedbyRestriction:Z

    return-void
.end method
