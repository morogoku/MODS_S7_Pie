.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;
.super Ljava/lang/Object;
.source "ViewTreeObserverUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

.field private myListener:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FloatingNotificationViewTreeObserverUtil"

    sput-object v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;->myListener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createAndAddViewTreeObserver(Landroid/view/View;Landroid/graphics/Region;)V
    .locals 18

    move-object/from16 v9, p0

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    invoke-direct {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;-><init>()V

    iput-object v0, v9, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const/4 v10, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    const-string v1, "android.view.ViewTreeObserver"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    move-object v12, v1

    new-array v1, v10, [Ljava/lang/Class;

    move-object v13, v1

    new-array v1, v10, [Ljava/lang/Class;

    move-object v14, v1

    array-length v1, v12

    const/4 v15, 0x0

    move v2, v15

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v12, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OnComputeInternalInsetsListener"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aput-object v3, v13, v15

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InternalInsetsInfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aput-object v3, v14, v15

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object v1, v14, v15

    const-string v2, "contentInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    aget-object v1, v14, v15

    const-string v2, "visibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aget-object v1, v14, v15

    const-string v2, "touchableRegion"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    aget-object v1, v14, v15

    const-string v2, "TOUCHABLE_INSETS_REGION"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    aget-object v1, v14, v15

    const-string v2, "setTouchableInsets"

    new-array v7, v10, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v15

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v1, "removeOnComputeInternalInsetsListener"

    invoke-virtual {v11, v1, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v7, v1

    const-string v1, "addOnComputeInternalInsetsListener"

    invoke-virtual {v11, v1, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v2, v1

    aget-object v1, v13, v15

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v15, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;

    move-object v10, v1

    move-object v1, v15

    move-object/from16 v16, v11

    move-object v11, v2

    move-object v2, v9

    move-object/from16 v17, v12

    move-object v12, v7

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil$1;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Landroid/graphics/Region;Ljava/lang/reflect/Method;)V

    invoke-static {v10, v13, v15}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;->myListener:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v1, v9, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;->myListener:Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v2, v7

    invoke-virtual {v12, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v1, v9, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;->myListener:Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v2, v7

    invoke-virtual {v11, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, v9, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    sget-object v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/ViewTreeObserverUtil;->TAG:Ljava/lang/String;

    const-string v3, "something happen when make ViewTreeObserver"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_1
    return-void
.end method
