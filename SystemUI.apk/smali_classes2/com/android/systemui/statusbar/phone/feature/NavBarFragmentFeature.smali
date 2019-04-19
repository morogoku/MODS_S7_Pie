.class public Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;
.super Ljava/lang/Object;
.source "NavBarFragmentFeature.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field private static sCurrentNavBarType:I


# instance fields
.field private mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContext:Landroid/content/Context;

.field private mFragment:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

.field private mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mRequestedSystemKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->sCurrentNavBarType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mFragment:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mFragment:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    return-object v0
.end method

.method private barMode(IIIII)I
    .locals 3

    const/4 v0, 0x1

    or-int v1, v0, p5

    and-int v2, p1, p3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    and-int v0, p1, p4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    and-int v0, p1, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    and-int v0, p1, p5

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    and-int v0, p2, p4

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto :goto_0

    :cond_4
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;
    .locals 7

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->getNavigationBarLayoutParam(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d012b

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v3, "SecNavigationBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSecNavigationBar: about to add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->sv(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0a036b

    const-string v6, "SecNavigationBar"

    invoke-virtual {v4, v5, v3, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    const-string v4, "SecNavigationBar"

    invoke-virtual {v2, v4, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    return-object v1
.end method

.method public static getNavigationBarLayoutParam(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e3

    const v4, 0x20840068

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f120910

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method private isRotationAnimationCCW(II)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-nez p1, :cond_1

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez p1, :cond_2

    if-ne p2, v3, :cond_2

    return v2

    :cond_2
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    return v2

    :cond_3
    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    return v2

    :cond_4
    if-ne p1, v0, :cond_5

    if-ne p2, v3, :cond_5

    return v0

    :cond_5
    if-ne p1, v1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    if-ne p1, v1, :cond_7

    if-ne p2, v0, :cond_7

    return v0

    :cond_7
    if-ne p1, v1, :cond_8

    if-ne p2, v3, :cond_8

    return v2

    :cond_8
    if-ne p1, v3, :cond_9

    if-nez p2, :cond_9

    return v0

    :cond_9
    if-ne p1, v3, :cond_a

    if-ne p2, v0, :cond_a

    return v0

    :cond_a
    if-ne p1, v3, :cond_b

    if-ne p2, v1, :cond_b

    return v0

    :cond_b
    return v2
.end method

.method public static switchNavigationBar(Landroid/view/View;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;I)V
    .locals 5

    sget v0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->sCurrentNavBarType:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    const-string v0, "SecNavigationBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchNavigationBar navbarType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->sd(Ljava/lang/String;Ljava/lang/String;)V

    sput p2, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->sCurrentNavBarType:I

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a036b

    const-string v4, "SecNavigationBar"

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    const-string v2, "SecNavigationBar"

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    return-void
.end method


# virtual methods
.method public adjustDisableFlags(I)I
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->getNavBarDisable1()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->getNavBarDisable1()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eq v0, p1, :cond_1

    xor-int v1, p1, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v3, "SecNavigationBar"

    const-string v4, "disable1: 0x%08x -> 0x%08x (diff1: 0x%08x)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public blockKeyEventListener(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    invoke-virtual {p3, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public computeBarMode(IIIIIII)I
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->barMode(IIIII)I

    move-result v0

    move-object v1, p0

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->barMode(IIIII)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    return v1
.end method

.method public getRotateButtonStyle(II)I
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->isRotationAnimationCCW(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_3

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    if-ne p2, v2, :cond_2

    const v1, 0x7f130150

    goto :goto_4

    :cond_2
    if-ne p1, v2, :cond_7

    if-ne p2, v3, :cond_7

    const v1, 0x7f13014d

    goto :goto_4

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    const v2, 0x7f13014e

    goto :goto_1

    :cond_4
    const v2, 0x7f130151

    :goto_1
    move v1, v2

    goto :goto_4

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    const v2, 0x7f13014f

    goto :goto_3

    :cond_6
    const v2, 0x7f130152

    :goto_3
    move v1, v2

    :cond_7
    :goto_4
    return v1
.end method

.method public isRotateButtonDisabledByPolicy()Z
    .locals 5

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "SecNavigationBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRotationButtonAvailable isUltraPowerSavingMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSetupWizardNavbar()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_SETUP_WIZARD:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->sCurrentNavBarType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyRequestedSystemKey(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mRequestedSystemKey:I

    sget v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->REQUESTED_RECENT:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mRequestedSystemKey:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mRequestedSystemKey:I

    sget v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->REQUESTED_RECENT:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mRequestedSystemKey:I

    :goto_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mRequestedSystemKey:I

    sget v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->REQUESTED_HOME:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mRequestedSystemKey:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mRequestedSystemKey:I

    sget v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->REQUESTED_HOME:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mRequestedSystemKey:I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mRequestedSystemKey:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyRequestedSystemKey(I)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;I)I
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "icon_hint_state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return p2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_SETUP_WIZARD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->sCurrentNavBarType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const v0, 0x7f0d0131

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0d01d8

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mFragment:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "icon_hint_state"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mFragment:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->saveState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;IILcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;

    invoke-direct {v1, p0, p5}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;-><init>(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$2;-><init>(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mFragment:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->restoreState(Landroid/os/Bundle;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_SETUP_WIZARD:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->sCurrentNavBarType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->setAutoDimOff(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->setAutoDimOff(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setForceImmersiveBtnVisibility(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "SecNavigationBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setForceImmersiveBtnVisibility visible : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setPinButtonVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "SecNavigationBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showNaviBarRemoteView requestClass : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", remoteViews : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    :cond_0
    return-void
.end method

.method public setWindowState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWindowState(I)V

    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "SecNavigationBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPinningEnterExitToast() : entering="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setScreenPinning(Z)V

    :cond_0
    return-void
.end method
