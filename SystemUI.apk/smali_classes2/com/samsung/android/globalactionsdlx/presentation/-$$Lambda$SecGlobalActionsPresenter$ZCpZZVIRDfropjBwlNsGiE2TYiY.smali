.class public final synthetic Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;

    invoke-direct {v0}, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;-><init>()V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;->INSTANCE:Lcom/samsung/android/globalactionsdlx/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    check-cast p2, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-static {p1, p2}, Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActionsPresenter;->lambda$static$4(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)I

    move-result p1

    return p1
.end method
