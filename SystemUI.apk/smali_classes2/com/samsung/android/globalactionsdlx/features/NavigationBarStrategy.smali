.class public Lcom/samsung/android/globalactionsdlx/features/NavigationBarStrategy;
.super Ljava/lang/Object;
.source "NavigationBarStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/strategies/WindowDecorationStrategy;


# instance fields
.field mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/features/NavigationBarStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    return-void
.end method


# virtual methods
.method public onDecorateWindow(Landroid/view/Window;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x200

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/features/NavigationBarStrategy;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_WHITE_THEME:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    or-int/lit8 v0, v0, 0x10

    :cond_1d
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
