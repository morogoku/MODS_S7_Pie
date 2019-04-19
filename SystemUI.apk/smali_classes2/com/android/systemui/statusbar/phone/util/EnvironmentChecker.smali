.class public Lcom/android/systemui/statusbar/phone/util/EnvironmentChecker;
.super Ljava/lang/Object;
.source "EnvironmentChecker.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/util/EnvironmentCheckerBase;


# static fields
.field private static final sIsFactoryBinary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/util/EnvironmentChecker;->sIsFactoryBinary:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFactoryBinary()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/util/EnvironmentChecker;->sIsFactoryBinary:Z

    return v0
.end method
