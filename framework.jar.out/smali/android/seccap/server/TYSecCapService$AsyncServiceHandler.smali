.class Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;
.super Landroid/os/Handler;
.source "TYSecCapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/seccap/server/TYSecCapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/seccap/server/TYSecCapService;


# direct methods
.method constructor <init>(Landroid/seccap/server/TYSecCapService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 532
    iput-object p1, p0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    .line 533
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 534
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 538
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 778
    const-string v2, "TYSecCapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TYSecCapService.handleMessage ignoring msg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 575
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v5, "pakNam"

    const-string v7, ""

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, packagename:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$200(Landroid/seccap/server/TYSecCapService;)Landroid/seccap/db/OperationsManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/seccap/db/OperationsManager;->delSeCcapInfoByPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 588
    const-string v2, "TYSecCapService"

    const-string v5, "TYSecCapService handleMessage PACKAGE_REMOVED delSeCcapInfoByPackage error"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 594
    .end local v4           #packagename:Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v5, "pakNam"

    const-string v7, ""

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 598
    .restart local v4       #packagename:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 599
    const/4 v6, 0x0

    .line 600
    .local v6, isSystem:I
    const/16 v20, 0x0

    .line 601
    .local v20, secCapInfo:Landroid/seccap/SecCapInfo;
    const/16 v22, 0x0

    .line 602
    .local v22, secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v24

    .line 603
    .local v24, tspg:Landroid/seccap/TYSupportGroup;
    const/16 v25, 0x0

    .line 605
    .local v25, tylist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$300(Landroid/seccap/server/TYSecCapService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v5, 0x1000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 606
    .local v14, info:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/seccap/TYSupportGroup;->CheckSupportPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$200(Landroid/seccap/server/TYSecCapService;)Landroid/seccap/db/OperationsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/seccap/db/OperationsManager;->getSecCapSettings()Landroid/seccap/SecCapSettings;

    move-result-object v21

    .line 611
    .local v21, secCapSettings:Landroid/seccap/SecCapSettings;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 612
    .end local v22           #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    .local v23, secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    :try_start_1
    iget-object v2, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v2, 0x1

    .line 613
    iget-object v8, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    move v13, v12

    .end local v12           #i$:I
    .local v13, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    aget-object v19, v8, v13

    .line 614
    .local v19, p:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/seccap/TYSupportGroup;->getTyUkpms(Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    .line 615
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 616
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_1
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v13           #i$:I
    .local v12, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 619
    .local v3, dp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    iget-object v5, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v21

    iget v7, v0, Landroid/seccap/SecCapSettings;->def3rdway:I

    #calls: Landroid/seccap/server/TYSecCapService;->buildData(Ljava/lang/String;Ljava/lang/String;III)Landroid/seccap/SecCapInfo;
    invoke-static/range {v2 .. v7}, Landroid/seccap/server/TYSecCapService;->access$400(Landroid/seccap/server/TYSecCapService;Ljava/lang/String;Ljava/lang/String;III)Landroid/seccap/SecCapInfo;

    move-result-object v20

    .line 620
    if-eqz v20, :cond_2

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$200(Landroid/seccap/server/TYSecCapService;)Landroid/seccap/db/OperationsManager;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/seccap/db/OperationsManager;->add2SeccapInfo(Landroid/seccap/SecCapInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 622
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 638
    .end local v3           #dp:Ljava/lang/String;
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #len$:I
    .end local v19           #p:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object/from16 v22, v23

    .line 639
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    .end local v21           #secCapSettings:Landroid/seccap/SecCapSettings;
    .end local v23           #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v22       #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    :goto_3
    const-string v2, "TYSecCapService"

    const-string v5, "TYSecCapService ACTION_PACKAGE_ADDED NameNotFoundException"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 624
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v22           #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    .restart local v3       #dp:Ljava/lang/String;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #info:Landroid/content/pm/PackageInfo;
    .restart local v16       #len$:I
    .restart local v19       #p:Ljava/lang/String;
    .restart local v21       #secCapSettings:Landroid/seccap/SecCapSettings;
    .restart local v23       #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    :cond_3
    :try_start_2
    const-string v2, "TYSecCapService"

    const-string v5, "TYSecCapService ACTION_PACKAGE_ADDED add2SeccapInfo error"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 613
    .end local v3           #dp:Ljava/lang/String;
    :cond_4
    add-int/lit8 v12, v13, 0x1

    .local v12, i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_1

    .line 629
    .end local v19           #p:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-lez v2, :cond_6

    :cond_6
    move-object/from16 v22, v23

    .end local v23           #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    .restart local v22       #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    goto/16 :goto_0

    .line 645
    .end local v4           #packagename:Ljava/lang/String;
    .end local v6           #isSystem:I
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    .end local v16           #len$:I
    .end local v20           #secCapInfo:Landroid/seccap/SecCapInfo;
    .end local v21           #secCapSettings:Landroid/seccap/SecCapSettings;
    .end local v22           #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    .end local v24           #tspg:Landroid/seccap/TYSupportGroup;
    .end local v25           #tylist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v5, "pakNam"

    const-string v7, ""

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 649
    .restart local v4       #packagename:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 650
    const/4 v6, 0x0

    .line 651
    .restart local v6       #isSystem:I
    const/16 v20, 0x0

    .line 652
    .restart local v20       #secCapInfo:Landroid/seccap/SecCapInfo;
    const/16 v22, 0x0

    .line 653
    .restart local v22       #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v24

    .line 654
    .restart local v24       #tspg:Landroid/seccap/TYSupportGroup;
    const/16 v25, 0x0

    .line 656
    .restart local v25       #tylist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$300(Landroid/seccap/server/TYSecCapService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v5, 0x1000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 657
    .restart local v14       #info:Landroid/content/pm/PackageInfo;
    iget-object v2, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$200(Landroid/seccap/server/TYSecCapService;)Landroid/seccap/db/OperationsManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/seccap/db/OperationsManager;->delSeCcapInfoByPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 659
    const-string v2, "TYSecCapService"

    const-string v5, "TYSecCapService PACKAGE_REPLACED delSeCcapInfoByPackage error"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$200(Landroid/seccap/server/TYSecCapService;)Landroid/seccap/db/OperationsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/seccap/db/OperationsManager;->getSecCapSettings()Landroid/seccap/SecCapSettings;

    move-result-object v21

    .line 662
    .restart local v21       #secCapSettings:Landroid/seccap/SecCapSettings;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 663
    .end local v22           #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    .restart local v23       #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    :try_start_4
    iget-object v2, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v2, 0x1

    .line 664
    iget-object v8, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .restart local v8       #arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v12, 0x0

    .restart local v12       #i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_c

    aget-object v19, v8, v13

    .line 665
    .restart local v19       #p:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/seccap/TYSupportGroup;->getTyUkpms(Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    .line 666
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 667
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_8
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v13           #i$:I
    .local v12, i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 670
    .restart local v3       #dp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    iget-object v5, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v21

    iget v7, v0, Landroid/seccap/SecCapSettings;->def3rdway:I

    #calls: Landroid/seccap/server/TYSecCapService;->buildData(Ljava/lang/String;Ljava/lang/String;III)Landroid/seccap/SecCapInfo;
    invoke-static/range {v2 .. v7}, Landroid/seccap/server/TYSecCapService;->access$400(Landroid/seccap/server/TYSecCapService;Ljava/lang/String;Ljava/lang/String;III)Landroid/seccap/SecCapInfo;

    move-result-object v20

    .line 671
    if-eqz v20, :cond_9

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$200(Landroid/seccap/server/TYSecCapService;)Landroid/seccap/db/OperationsManager;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/seccap/db/OperationsManager;->add2SeccapInfo(Landroid/seccap/SecCapInfo;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 673
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 695
    .end local v3           #dp:Ljava/lang/String;
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #len$:I
    .end local v19           #p:Ljava/lang/String;
    :catch_1
    move-exception v11

    move-object/from16 v22, v23

    .line 696
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    .end local v21           #secCapSettings:Landroid/seccap/SecCapSettings;
    .end local v23           #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    .restart local v11       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v22       #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    :goto_6
    const-string v2, "TYSecCapService"

    const-string v5, "TYSecCapService PACKAGE_REPLACED NameNotFoundException"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 675
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v22           #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    .restart local v3       #dp:Ljava/lang/String;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #info:Landroid/content/pm/PackageInfo;
    .restart local v16       #len$:I
    .restart local v19       #p:Ljava/lang/String;
    .restart local v21       #secCapSettings:Landroid/seccap/SecCapSettings;
    .restart local v23       #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    :cond_a
    :try_start_5
    const-string v2, "TYSecCapService"

    const-string v5, "TYSecCapService ACTION_PACKAGE_ADDED add2SeccapInfo error"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 664
    .end local v3           #dp:Ljava/lang/String;
    :cond_b
    add-int/lit8 v12, v13, 0x1

    .local v12, i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_4

    .line 680
    .end local v19           #p:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v2

    if-lez v2, :cond_d

    :cond_d
    move-object/from16 v22, v23

    .line 688
    .end local v23           #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    .restart local v22       #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    goto/16 :goto_0

    .line 689
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v16           #len$:I
    .end local v21           #secCapSettings:Landroid/seccap/SecCapSettings;
    :cond_e
    :try_start_6
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 690
    .local v9, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "pakNam"

    invoke-virtual {v9, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mAsyncServiceHandler:Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$000(Landroid/seccap/server/TYSecCapService;)Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

    move-result-object v2

    const v5, 0x80001

    invoke-static {v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v17

    .line 692
    .local v17, message:Landroid/os/Message;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 693
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 695
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    .end local v17           #message:Landroid/os/Message;
    :catch_2
    move-exception v11

    goto :goto_6

    .line 702
    .end local v4           #packagename:Ljava/lang/String;
    .end local v6           #isSystem:I
    .end local v20           #secCapInfo:Landroid/seccap/SecCapInfo;
    .end local v22           #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    .end local v24           #tspg:Landroid/seccap/TYSupportGroup;
    .end local v25           #tylist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/seccap/SecCapInfo;

    .line 706
    .restart local v20       #secCapInfo:Landroid/seccap/SecCapInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    move-object/from16 v0, v20

    #calls: Landroid/seccap/server/TYSecCapService;->showInquireDialog(Landroid/seccap/SecCapInfo;)V
    invoke-static {v2, v0}, Landroid/seccap/server/TYSecCapService;->access$500(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapInfo;)V

    goto/16 :goto_0

    .line 710
    .end local v20           #secCapInfo:Landroid/seccap/SecCapInfo;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/seccap/SecCapInfo;

    .line 714
    .restart local v20       #secCapInfo:Landroid/seccap/SecCapInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mMap:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$600(Landroid/seccap/server/TYSecCapService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "##"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->token:Ljava/lang/Object;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$700(Landroid/seccap/server/TYSecCapService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 716
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->token:Ljava/lang/Object;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$700(Landroid/seccap/server/TYSecCapService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 717
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2

    .line 721
    .end local v20           #secCapInfo:Landroid/seccap/SecCapInfo;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mDataAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$800(Landroid/seccap/server/TYSecCapService;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 722
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 723
    .local v15, itime:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    .line 724
    .local v18, overtimeway:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/seccap/SecCapInfo;

    .line 725
    .restart local v20       #secCapInfo:Landroid/seccap/SecCapInfo;
    if-ltz v15, :cond_11

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mDataAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$800(Landroid/seccap/server/TYSecCapService;)Landroid/app/AlertDialog;

    move-result-object v5

    if-nez v18, :cond_f

    const/4 v2, -0x1

    :goto_7
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    .line 728
    .local v10, button:Landroid/widget/Button;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$900(Landroid/seccap/server/TYSecCapService;)Landroid/content/Context;

    move-result-object v7

    if-nez v18, :cond_10

    const v2, 0x10405b3

    :goto_8
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 731
    const/4 v2, 0x5

    if-gt v15, v2, :cond_0

    .line 732
    const/high16 v2, -0x1

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 726
    .end local v10           #button:Landroid/widget/Button;
    :cond_f
    const/4 v2, -0x2

    goto :goto_7

    .line 728
    .restart local v10       #button:Landroid/widget/Button;
    :cond_10
    const v2, 0x10405b4

    goto :goto_8

    .line 735
    .end local v10           #button:Landroid/widget/Button;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #calls: Landroid/seccap/server/TYSecCapService;->cancelTime()V
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$1000(Landroid/seccap/server/TYSecCapService;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mDataAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$800(Landroid/seccap/server/TYSecCapService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    const/4 v5, 0x0

    #setter for: Landroid/seccap/server/TYSecCapService;->mDataAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v5}, Landroid/seccap/server/TYSecCapService;->access$802(Landroid/seccap/server/TYSecCapService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 738
    if-nez v18, :cond_12

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    const/4 v5, 0x1

    move-object/from16 v0, v20

    #calls: Landroid/seccap/server/TYSecCapService;->notifyInquireResult(Landroid/seccap/SecCapInfo;Z)V
    invoke-static {v2, v0, v5}, Landroid/seccap/server/TYSecCapService;->access$1100(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapInfo;Z)V

    goto/16 :goto_0

    .line 741
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    #calls: Landroid/seccap/server/TYSecCapService;->notifyInquireResult(Landroid/seccap/SecCapInfo;Z)V
    invoke-static {v2, v0, v5}, Landroid/seccap/server/TYSecCapService;->access$1100(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapInfo;Z)V

    goto/16 :goto_0

    .line 748
    .end local v15           #itime:I
    .end local v18           #overtimeway:I
    .end local v20           #secCapInfo:Landroid/seccap/SecCapInfo;
    :pswitch_6
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 752
    .restart local v15       #itime:I
    if-gez v15, :cond_0

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/seccap/server/TYSecCapService;->cleanLastInfoMap(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 758
    .end local v15           #itime:I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/seccap/SecCapInfo;

    .line 762
    .restart local v20       #secCapInfo:Landroid/seccap/SecCapInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    move-object/from16 v0, v20

    #calls: Landroid/seccap/server/TYSecCapService;->showInquireDialog(Landroid/seccap/SecCapInfo;)V
    invoke-static {v2, v0}, Landroid/seccap/server/TYSecCapService;->access$500(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapInfo;)V

    goto/16 :goto_0

    .line 766
    .end local v20           #secCapInfo:Landroid/seccap/SecCapInfo;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/seccap/SecCapInfo;

    .line 770
    .restart local v20       #secCapInfo:Landroid/seccap/SecCapInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mMapUkpms:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$1200(Landroid/seccap/server/TYSecCapService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "##"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->unKnownToken:Ljava/lang/Object;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$1300(Landroid/seccap/server/TYSecCapService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 772
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->unKnownToken:Ljava/lang/Object;
    invoke-static {v2}, Landroid/seccap/server/TYSecCapService;->access$1300(Landroid/seccap/server/TYSecCapService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 773
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 638
    .restart local v4       #packagename:Ljava/lang/String;
    .restart local v6       #isSystem:I
    .restart local v22       #secCaplist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/seccap/SecCapInfo;>;"
    .restart local v24       #tspg:Landroid/seccap/TYSupportGroup;
    .restart local v25       #tylist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v11

    goto/16 :goto_3

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method
