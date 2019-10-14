.class public Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserState"
.end annotation


# instance fields
.field public mAccessibilityFocusOnlyInActiveWindow:Z

.field public mBindInstantServiceAllowed:Z

.field private final mBindingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mBoundServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public final mComponentNameToServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;",
            ">;"
        }
    .end annotation
.end field

.field public mIsAccessibilitySTalkBackEnabled:Z

.field public mIsAutoclickEnabled:Z

.field public mIsBixbyRunning:Z

.field public mIsDisplayMagnificationEnabled:Z

.field public mIsFilterKeyEventsEnabled:Z

.field public mIsFollowTypingFocusEnabled:Z

.field public mIsMagniferWindowEnabled:Z

.field public mIsNavBarAssistantMenuAssignedToAccessibilityButton:Z

.field public mIsNavBarMagnificationAssignedToAccessibilityButton:Z

.field public mIsNavBarMagnificationEnabled:Z

.field public mIsNavBarMagnifierWindowAssignedToAccessibilityButton:Z

.field public mIsPerformGesturesEnabled:Z

.field public mIsTapDurationEnabled:Z

.field public mIsTextHighContrastEnabled:Z

.field public mIsTouchBlockingEnabled:Z

.field public mIsTouchExplorationEnabled:Z

.field public mIsUniversalSwitchEnabled:Z

.field public mLastSentClientState:I

.field public mLastSentObservedEventTypes:I

.field public mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

.field public mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

.field public mServiceToEnableWithShortcut:Landroid/content/ComponentName;

.field public mSoftKeyboardShowMode:I

.field public final mTouchExplorationGrantedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserId:I

.field public final mWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentObservedEventTypes:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->resetAssignedAccButtonState()V

    return-void
.end method

.method private isA11yHelperIsBound()Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_7
    if-ge v1, v2, :cond_22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.app.a11yhelper"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    return v4

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method private isWhiteList(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 8

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWhiteList:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6700()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_1c

    aget-object v4, v0, v3

    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1c
    return v2
.end method

.method private resetAssignedAccButtonState()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarAssistantMenuAssignedToAccessibilityButton:Z

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnifierWindowAssignedToAccessibilityButton:Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_button_target_component"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onAdded()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChange(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isWhiteList(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAllowBixby:Z

    goto :goto_29

    :cond_26
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAllowBixby:Z

    :goto_29
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->resetAssignedAccButtonState()V

    :cond_30
    return-void
.end method

.method public getBindingServicesLocked()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    return-object v0
.end method

.method public getClientState()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/UiAutomationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v1, 0x1

    :goto_17
    if-eqz v1, :cond_1b

    or-int/lit8 v0, v0, 0x1

    :cond_1b
    if-eqz v1, :cond_21

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-nez v2, :cond_27

    :cond_21
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isA11yHelperIsBound()Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_27
    or-int/lit8 v0, v0, 0x2

    :cond_29
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    if-eqz v2, :cond_2f

    or-int/lit8 v0, v0, 0x4

    :cond_2f
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsBixbyRunning:Z

    if-eqz v2, :cond_35

    or-int/lit16 v0, v0, 0x100

    :cond_35
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/UiAutomationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_44

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    :cond_44
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsMagniferWindowEnabled:Z

    if-eqz v2, :cond_50

    or-int/lit16 v0, v0, 0x200

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFollowTypingFocusEnabled:Z

    if-eqz v2, :cond_50

    or-int/lit16 v0, v0, 0x400

    :cond_50
    return v0
.end method

.method public isHandlingAccessibilityEvents()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public onSwitchToAnotherUserLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsMagniferWindowEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFollowTypingFocusEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsUniversalSwitchEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTapDurationEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchBlockingEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnifierWindowAssignedToAccessibilityButton:Z

    return-void
.end method

.method public removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onRemoved()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_28
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChange(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method public semIsObservedEventType(I)Z
    .registers 3

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentObservedEventTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
