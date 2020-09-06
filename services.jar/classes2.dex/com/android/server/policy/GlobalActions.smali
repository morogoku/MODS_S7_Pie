.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final ENABLE_SEC_GLOBAL_ACTIONS:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mGlobalActionsAvailable:Z

.field private final mGlobalActionsDebugMode:Lcom/android/server/policy/GlobalActionsDebugMode;

.field private final mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

.field private mKeyguardShowing:Z

.field private mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

.field private mSecGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;

.field private final mShowTimeout:Ljava/lang/Runnable;

.field private mShowing:Z

.field private final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    new-instance v0, Lcom/android/server/policy/GlobalActionsDebugMode;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/policy/GlobalActionsDebugMode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsDebugMode:Lcom/android/server/policy/GlobalActionsDebugMode;

    const-class v0, Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActionsProvider;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-interface {v0, p0}, Lcom/android/server/policy/GlobalActionsProvider;->setGlobalActionsListener(Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)V

    goto :goto_32

    :cond_2b
    const-string v0, "GlobalActions"

    const-string v1, "No GlobalActionsProvider found, defaulting to LegacyGlobalActions"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/GlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSecGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;

    return-object v0
.end method

.method private ensureLegacyCreated()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSecGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$j_3GF7S52oSV__e_mYWlY5TeyiM;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$j_3GF7S52oSV__e_mYWlY5TeyiM;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSecGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;

    return-void
.end method


# virtual methods
.method isDialogPowerOptionHidden()Z
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogOptionMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x1

    :goto_16
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Knox Custom: getPowerDialogOptionMode() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " returning : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_35
    return v1
.end method

.method isDialogShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    return v0
.end method

.method public onGlobalActionsAvailableChanged(Z)V
    .registers 6

    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGlobalActionsAvailableChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    if-nez v0, :cond_2e

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSecGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->show(ZZZ)V

    :cond_2e
    return-void
.end method

.method public onGlobalActionsDismissed()V
    .registers 3

    const-string v0, "GlobalActions"

    const-string/jumbo v1, "onGlobalActionsDismissed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    return-void
.end method

.method public onGlobalActionsShown()V
    .registers 3

    const-string v0, "GlobalActions"

    const-string/jumbo v1, "onGlobalActionsShown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showDialog(ZZZ)V
    .registers 8

    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActionsProvider;->isGlobalActionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_5c

    :cond_2c
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsDebugMode:Lcom/android/server/policy/GlobalActionsDebugMode;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActionsDebugMode;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsDebugMode:Lcom/android/server/policy/GlobalActionsDebugMode;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActionsDebugMode;->isGlobalActionsStartBySystemUI()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    :cond_43
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    if-eqz v1, :cond_4f

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    xor-int/lit8 v1, p3, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/policy/GlobalActionsProvider;->showGlobalActions(Z)V

    goto :goto_5b

    :cond_4f
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSecGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/policy/globalactions/presentation/view/SecGlobalActionsDialog;->show(ZZZ)V

    :goto_5b
    return-void

    :cond_5c
    :goto_5c
    return-void
.end method
