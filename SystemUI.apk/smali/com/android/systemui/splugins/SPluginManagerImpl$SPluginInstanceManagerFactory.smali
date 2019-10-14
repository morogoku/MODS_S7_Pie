.class public Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;
.super Ljava/lang/Object;
.source "SPluginManagerImpl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SPluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SPluginInstanceManagerFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/splugins/SPluginManagerImpl;)Lcom/android/systemui/splugins/SPluginInstanceManager;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;ZZ",
            "Landroid/os/Looper;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/systemui/splugins/SPluginManagerImpl;",
            ")",
            "Lcom/android/systemui/splugins/SPluginInstanceManager;"
        }
    .end annotation

    new-instance v9, Lcom/android/systemui/splugins/SPluginInstanceManager;

    new-instance v0, Lcom/android/systemui/splugins/SVersionInfo;

    invoke-direct {v0}, Lcom/android/systemui/splugins/SVersionInfo;-><init>()V

    move-object/from16 v10, p7

    invoke-virtual {v0, v10}, Lcom/android/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;)Lcom/android/systemui/splugins/SVersionInfo;

    move-result-object v7

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/splugins/SPluginInstanceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Lcom/android/systemui/splugins/SVersionInfo;Lcom/android/systemui/splugins/SPluginManagerImpl;)V

    return-object v9
.end method
