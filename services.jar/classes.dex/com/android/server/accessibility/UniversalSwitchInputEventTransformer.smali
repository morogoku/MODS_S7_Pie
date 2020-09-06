.class public Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "UniversalSwitchInputEventTransformer.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final SCREEN_AS_SWITCH:Ljava/lang/String; = "accessibility_universal_switch_screen_as_switch"

.field private static final TAG:Ljava/lang/String; = "SwitchControlScreenAsSwitch"


# instance fields
.field private SCREEN_AS_SWITCH_BROADCAST_ACTION_DOWN:Ljava/lang/String;

.field private SCREEN_AS_SWITCH_BROADCAST_ACTION_UP:Ljava/lang/String;

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mTapTimeout:I

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const-string v0, "UNIVERSAL_SWITCH_SCREEN_AS_SWITCH_CLICK_ACTION_DOWN"

    iput-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->SCREEN_AS_SWITCH_BROADCAST_ACTION_DOWN:Ljava/lang/String;

    const-string v0, "UNIVERSAL_SWITCH_SCREEN_AS_SWITCH_CLICK_ACTION_UP"

    iput-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->SCREEN_AS_SWITCH_BROADCAST_ACTION_UP:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mTouchSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mTapTimeout:I

    return-void
.end method

.method private checkUniversalSwitchState()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enabled_accessibility_services"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwitchControlScreenAsSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in fliter checkUniversalSwitchState enabledServicesSetting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_29

    return v1

    :cond_29
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    return v1

    :cond_30
    iget-object v2, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v1, 0x1

    return v1

    :cond_3c
    return v1
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 5

    const-string v0, "SwitchControlScreenAsSwitch"

    const-string/jumbo v1, "sendMotionEvent - passing event to application"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p2, v0

    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mDownEvent:Landroid/view/MotionEvent;

    :cond_c
    return-void
.end method

.method public clearEvents(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public bridge synthetic getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 2

    invoke-super {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    return-object v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10

    invoke-direct {p0}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->checkUniversalSwitchState()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_universal_switch_screen_as_switch"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    move v1, v2

    const-string v2, "SwitchControlScreenAsSwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In universal Switch input filter universalSwitchState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " screenAsSwitchEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7a

    if-eqz v0, :cond_7a

    const-string v2, "SwitchControlScreenAsSwitch"

    const-string/jumbo v3, "screen as switch is enabled hence blocking touch events here"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const-string v4, "SwitchControlScreenAsSwitch"

    const-string/jumbo v5, "receiving motion event"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v3, :pswitch_data_7e

    goto :goto_79

    :pswitch_56
    iget-object v4, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_5b

    return-void

    :cond_5b
    iget-object v4, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v4, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_67

    invoke-virtual {p0}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->clear()V

    return-void

    :cond_67
    iget-object v4, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->SCREEN_AS_SWITCH_BROADCAST_ACTION_UP:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->sendBroadCast(Ljava/lang/String;)V

    goto :goto_79

    :pswitch_6d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mDownEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->SCREEN_AS_SWITCH_BROADCAST_ACTION_DOWN:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->sendBroadCast(Ljava/lang/String;)V

    nop

    :goto_79
    goto :goto_7d

    :cond_7a
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->sendMotionEvent(Landroid/view/MotionEvent;I)V

    :goto_7d
    return-void

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_56
    .end packed-switch
.end method

.method sendBroadCast(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_11

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accessibility/UniversalSwitchInputEventTransformer;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_11
    return-void
.end method

.method public bridge synthetic setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    return-void
.end method
