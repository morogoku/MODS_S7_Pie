.class Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashNoti"
.end annotation


# instance fields
.field private final mOffDuration:I

.field private final mOnDuration:I

.field private final mPkgName:Ljava/lang/String;

.field private mRepeat:I

.field private final mToken:Landroid/os/IBinder;

.field private final mType:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mToken:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mType:I

    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mPkgName:Ljava/lang/String;

    const/4 p1, 0x2

    if-ne p3, p1, :cond_18

    const/16 p1, 0x2bc

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOnDuration:I

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOffDuration:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I

    goto :goto_22

    :cond_18
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOnDuration:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOffDuration:I

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I

    :goto_22
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;ILjava/lang/String;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOnDuration:I

    return v0
.end method

.method static synthetic access$10100(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mOffDuration:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mType:I

    return v0
.end method

.method static synthetic access$9800(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I

    return v0
.end method

.method static synthetic access$9810(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I
    .registers 3

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mRepeat:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "AccessibilityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FlashNoti.binderDied(), pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    move-result-object v1

    if-ne p0, v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->semStopFlashNotiLocked()V
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9300(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->semStartNextFlashNotiLocked()V
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9400(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v1
.end method
