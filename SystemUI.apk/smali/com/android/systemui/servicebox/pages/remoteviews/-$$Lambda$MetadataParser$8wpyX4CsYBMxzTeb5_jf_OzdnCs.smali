.class public final synthetic Lcom/android/systemui/servicebox/pages/remoteviews/-$$Lambda$MetadataParser$8wpyX4CsYBMxzTeb5_jf_OzdnCs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/-$$Lambda$MetadataParser$8wpyX4CsYBMxzTeb5_jf_OzdnCs;->f$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/-$$Lambda$MetadataParser$8wpyX4CsYBMxzTeb5_jf_OzdnCs;->f$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->lambda$loadAllMetaData$0(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)V

    return-void
.end method
