.class final Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;
.super Landroid/database/ContentObserver;
.source "SamsungTouchBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchBlockingObserver"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mTouchBlockingSettingsUri:Landroid/net/Uri;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTouchBlocker;ILandroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "touch_blocking_period"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "touch_blocking_period"

    const v3, 0x3dcccccd    # 0.1f

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    iput v1, v0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriod:F

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    iget v1, v1, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriod:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    :cond_26
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_21

    if-eqz p1, :cond_19

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ContentResolver is not set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Observer has already been started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchBlockingObserver has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
