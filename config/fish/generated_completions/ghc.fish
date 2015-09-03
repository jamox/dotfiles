# ghc
# Autogenerated from man page /usr/local/share/man/man1/ghc.1
# using Deroffing man parser
complete -c ghc -s v -o cpp -o fasm -o fvia-C -o fllvm --description '" -#include .'
complete -c ghc -o vn -o fprint-explicit-foralls -o fprint-explicit-kinds -o ferror-spans -o Hsize -o Rghc-timing --description 'Alternative modes of operation.'
complete -c ghc -l help -s '?' -l interactive -l make -s e -l show-iface -s M -l supported-extensions -l supported-languages -l show-options -l info -l version -s V -l numeric-version -l print-libdir --description 'Which phases to run.'
complete -c ghc -s E -s C -s S -s c -s x --description 'Redirecting output.'
complete -c ghc -o hcsuf -o hidir -o hisuf -s o -o odir -o ohi -o osuf -o stubdir -o dumpdir -o outputdir --description 'Keeping intermediate files.'
complete -c ghc -o keep-hc-file --description '              -keep-hc-files  -keep-llvm-file o… [See Man Page]'
complete -c ghc -o tmpdir --description 'Finding imports.'
complete -c ghc -o 'idir1:dir2:...' -s i --description 'Interface file options.'
complete -c ghc -o ddump-hi -o ddump-hi-diffs -o ddump-minimal-imports --description 'Recompilation checking.'
complete -c ghc -o fforce-recomp -o fno-force-recomp --description 'Interactive-mode options.'
complete -c ghc -o ignore-dot-ghci -o ghci-script -o fbreak-on-exception -o fno-break-on-exception -o fbreak-on-error -o fno-break-on-error -o fghci-hist-size -o fprint-evld-with-show -o fno-print-evld-with-show -o fprint-bind-result -o fno-print-bind-result -o fno-print-bind-contents -o fno-implicit-import-qualified -o interactive-print --description 'Packages.'
complete -c ghc -o package-name -o package -o hide-all-packages -o hide-package -o ignore-package -o package-db -o clear-package-db -o no-global-package-db -o global-package-db -o no-user-package-db -o user-package-db -o no-auto-link-packages -o trust -o distrust -o distrust-all --description 'Language options.'
complete -c ghc -o fglasgow-exts -o fno-glasgow-exts -o firrefutable-tuples -o fno-irrefutable-tuples -o fcontext-stack -o ftype-function-depth -o XAllowAmbiguousTypes -o XNoAllowAmbiguousTypes -o XArrows -o XNoArrows -o XAutoDeriveTypeable -o XNoAutoDeriveTypeable -o XConstraintKinds -o XNoConstraintKinds -o XDataKinds -o XNoDataKinds -o XDeriveDataTypeable -o XNoDeriveDataTypeable -o XDeriveGeneric -o XNoDeriveGeneric -o XGeneralizedNewtypeDeriving -o XNoGeneralizedNewtypeDeriving -o XDisambiguateRecordFields -o XNoDisambiguateRecordFields -o XEmptyCase -o XNoEmptyCase -o XExtendedDefaultRules -o XNoExtendedDefaultRules -o XForeignFunctionInterface -o XNoForeignFunctionInterface -o XGADTs -o XNoGADTs -o XGADTSyntax -o XNoGADTSyntax -o XGenerics -o XNoGenerics -o XImplicitParams -o XNoImplicitParams -o XNoImplicitPrelude -o XImplicitPrelude -o XIncoherentInstances -o XNoIncoherentInstances -o XNoMonomorphismRestriction -o XMonomorphismRrestriction -o XNegativeLiterals -o XNoNegativeLiterals -o XNoNPlusKPatterns -o XNPlusKPatterns -o XNumDecimals -o XNoNumDecimals -o XOverlappingInstances -o XNoOverlappingInstances -o XOverloadedLists -o XNoOverloadedLists -o XOverloadedStrings -o XNoOverloadedStrings -o XQuasiQuotes -o XNoQuasiQuotes -o XRelaxedPolyRec -o XNoRelaxedPolyRec -o XNoTraditionalRecordSyntax -o XTraditionalRecordSyntax -o XTypeFamilies -o XNoTypeFamilies -o XUndecidableInstances -o XNoUndecidableInstances -o XPolyKinds -o XNoPolyKinds -o XMonoLocalBinds -o XNoMonoLocalBinds -o XRebindableSyntax -o XNoRebindableSyntax -o XScopedTypeVariables -o XNoScopedTypeVariables -o XTemplateHaskell -o XNoTemplateHaskell -o XBangPatterns -o XNoBangPatterns -o XCPP -o XNoCPP -o XPatternGuards -o XNoPatternGuards -o XViewPatterns -o XNoViewPatterns -o XUnicodeSyntax -o XNoUnicodeSyntax -o XMagicHash -o XNoMagicHash -o XExplicitForAll -o XNoExplicitForAll -o XPolymorphicComponents -o XNoPolymorphicComponents -o XRank2Types -o XNoRank2Types -o XRankNTypes -o XNoRankNTypes -o XImpredicativeTypes -o XNoImpredicativeTypes -o XExistentialQuantification -o XNoExistentialQuantification -o XKindSignatures -o XNoKindSignatures -o XEmptyDataDecls -o XNoEmptyDataDecls -o XParallelListComp -o XNoParallelListComp -o XTransformListComp -o XNoTransformListComp -o XMonadComprehensions -o XNoMonadComprehensions -o XUnliftedFFITypes -o XNoUnliftedFFITypes -o XInterruptibleFFI -o XNoInterruptibleFFI -o XLiberalTypeSynonyms -o XNoLiberalTypeSynonyms -o XTypeOperators -o XNoTypeOperators -o XExplicitNamespaces -o XNoExplicitNamespaces -o XRecursiveDo -o XNoRecursiveDo -o XParallelArrays -o XNoParallelArrays -o XRecordWildCards -o XNoRecordWildCards -o XNamedFieldPuns -o XNoNamedFieldPuns -o XDisambiguateRecordFields -o XNoDisambiguateRecordFields -o XUnboxedTuples -o XNoUnboxedTuples -o XStandaloneDeriving -o XNoStandaloneDeriving -o XTypeSynonymInstances -o XNoTypeSynonymInstances -o XFlexibleContexts -o XNoFlexibleContexts -o XFlexibleInstances -o XNoFlexibleInstances -o XConstrainedClassMethods -o XNoConstrainedClassMethods -o XDefaultSignatures -o XNoDefaultSignatures -o XMultiParamTypeClasses -o XNoMultiParamTypeClasses -o XNullaryTypeClasses -o XNoNullaryTypeClasses -o XFunctionalDependencies -o XNoFunctionalDependencies -o XPackageImports -o XNoPackageImports -o XLambdaCase -o XNoLambdaCase -o XMultiWayIf -o XNoMultiWayIf -o XSafe -o XTrustworthy -o XUnsafe -o fpackage-trust --description 'Warnings.'
complete -c ghc -s W -s w -s w -o Wall -s w -o Werror -o Wwarn -o fdefer-type-errors -o fno-defer-type-errors -o fhelpful-errors -o fno-helpful-errors -o fwarn-deprecated-flags -o fno-warn-deprecated-flags -o fwarn-duplicate-constraints -o fno-warn-duplicate-constraints -o fwarn-duplicate-exports -o fno-warn-duplicate-exports -o fwarn-hi-shadowing -o fno-warn-hi-shadowing -o fwarn-identities -o fno-warn-identities -o fwarn-implicit-prelude -o fno-warn-implicit-prelude -o fwarn-incomplete-patterns -o fno-warn-incomplete-patterns -o fwarn-incomplete-uni-patterns -o fno-warn-incomplete-uni-patterns -o fwarn-incomplete-record-updates -o fno-warn-incomplete-record-updates -o fwarn-lazy-unlifted-bindings -o fno-warn-lazy-unlifted-bindings -o fwarn-missing-fields -o fno-warn-missing-fields -o fwarn-missing-import-lists -o fnowarn-missing-import-lists -o fwarn-missing-methods -o fno-warn-missing-methods -o fwarn-missing-signatures -o fno-warn-missing-signatures -o fwarn-missing-local-sigs -o fno-warn-missing-local-sigs -o fwarn-monomorphism-restriction -o fno-warn-monomorphism-restriction -o fwarn-name-shadowing -o fno-warn-name-shadowing -o fwarn-orphans -o fwarn-auto-orphans -o fno-warn-orphans -o fno-warn-auto-orphans -o fwarn-overlapping-patterns -o fno-warn-overlapping-patterns -o fwarn-tabs -o fno-warn-tabs -o fwarn-type-defaults -o fno-warn-type-defaults -o fwarn-unrecognised-pragmas -o fno-warn-unrecognised-pragmas -o fwarn-unused-binds -o fno-warn-unused-binds -o fwarn-unused-imports -o fno-warn-unused-imports -o fwarn-unused-matches -o fno-warn-unused-matches -o fwarn-unused-do-bind -o fno-warn-unused-do-bind -o fwarn-wrong-do-bind -o fno-warn-wrong-do-bind -o fwarn-unsafe -o fno-warn-unsafe -o fwarn-safe -o fno-warn-safe -o fwarn-warnings-deprecations -o fno-warn-warnings-deprecations -o fwarn-amp -o fno-warn-amp -o fwarn-typed-holes -o fno-warn-typed-holes --description 'Optimisation levels.'
complete -c ghc -s O -o O0 -o On -o O0 --description 'Individual optimisations.'
complete -c ghc -o fcase-merge -o fno-case-merge -o fcse -o fno-cse -o fdicts-strict -o fno-dicts-strict -o fdo-eta-reduction -o fno-do-eta-reduction -o fdo-lambda-eta-expansion -o fno-do-lambda-eta-expansion -o feager-blackholing -o fenable-rewrite-rules -o fno-enable-rewrite-rules -o fvectorise -o fno-vectorise -o favoid-vect -o fno-avoid-vect -o fexcess-precision -o fno-excess-precision -o ffloat-in -o fno-float-in -o ffull-laziness -o fno-full-laziness -o ffun-to-thunk -o fno-fun-to-thunk -o fignore-asserts -o fno-ignore-asserts -o fignore-interface-pragmas -o fno-ignore-interface-pragmas -o floopification -o fno-loopification -o flate-dmd-anal -o fno-late-dmd-anal -o fliberate-case -o fliberate-case-threshold -o fno-liberate-case-threshold -o fmax-relevant-bindings -o fno-max-relevant-bindings -o fmax-simplifier-iterations -o fmax-worker-args -o fno-opt-coercion -o fno-pre-inlining -o fno-state-hack -o fpedantic-bottoms -o fno-pedantic-bottoms -o fomit-interface-pragmas -o fno-omit-interface-pragmas -o fsimplifier-phases -o fsimpl-tick-factor -o fspec-constr -o fno-spec-constr -o fspec-constr-threshold -o fno-spec-constr-threshold -o fspec-constr-count -o fno-spec-constr-count -o fspecialise -o fno-specialise -o fstrictness -o fno-strictness -o fstrictness -o fstatic-argument-transformation -o fno-static-argument-transformation -o funbox-strict-fields -o fno-unbox-strict-fields -o funbox-small-strict-fields -o fno-unbox-small-strict-fields -o funfolding-creation-threshold -o fno-unfolding-creation-threshold -o funfolding-fun-discount -o fno-unfolding-fun-discount -o funfolding-keeness-factor -o fno-unfolding-keeness-factor -o funfolding-use-threshold -o fno-unfolding-use-threshold --description 'Profiling options.'
complete -c ghc -o prof -o fprof-auto -o fno-prof-auto -o fprof-auto-top -o fno-prof-auto -o fprof-auto-exported -o fno-prof-auto -o fprof-cafs -o fno-prof-cafs -o fno-prof-count-entries -o fprof-count-entries -o ticky --description 'Program coverage options.'
complete -c ghc -o fhpc -o hpcdir --description 'Haskell pre-processor options.'
complete -c ghc -s F --description 'C pre-processor options.'
complete -c ghc -o Dsymbol -s U -o Usymbol -o Idir --description 'Code generation options.'
complete -c ghc -o fno-code -o fbyte-code -o fobject-code --description 'Linking options.'
complete -c ghc -o shared -o staticlib -o fPIC -o dynamic -o dynamic-too -o dyno -o dynosuf -o dynload -o framework -o framework-path -o llib -o Ldir -o main-is -l mk-dll -o no-hs-main -o rtsopts -o rtsopts -o with-rtsopts -o no-link -o split-objs -o static -o threaded -o debug -o eventlog -o fno-gen-manifest -o fno-embed-manifest -o fno-shared-implib -o dylib-install-name --description 'Plugin options.'
complete -c ghc -o fplugin -o fplugin-opt --description 'Replacing phases.'
complete -c ghc -o pgmL -o pgmP -o pgmc -o pgms -o pgma -o pgml -o pgmdll -o pgmF -o pgmwindres -o pgmlibtool --description 'Forcing options to particular phases.'
complete -c ghc -o optL -o optP -o optF -o optc -o optlo -o optlc -o optm -o opta -o optl -o optdll -o optwindres --description 'Platform-specific options.'
complete -c ghc -o msse2 -o 'monly-[432]-regs' --description 'External core file options.'
complete -c ghc -o fext-core --description 'Compiler debugging options.'
complete -c ghc -o dcore-lint -o ddump-to-file -o ddump-asm -o ddump-bcos -o ddump-cmm -o ddump-core-stats -o ddump-cpranal -o ddump-cse -o ddump-deriv -o ddump-ds -o ddump-flatC -o ddump-foreign -o ddump-hpc -o ddump-inlinings -o ddump-llvm -o ddump-occur-anal -o ddump-opt-cmm -o ddump-parsed -o ddump-prep -o ddump-rn -o ddump-rule-firings -o ddump-rule-rewrites -o ddump-rules -o ddump-vect -o ddump-simpl -o ddump-simpl-phases -o ddump-simpl-iterations -o ddump-spec -o ddump-splices -o ddump-stg -o ddump-stranal -o ddump-strsigs -o ddump-tc -o ddump-types -o ddump-worker-wrapper -o ddump-if-trace -o ddump-tc-trace -o ddump-vt-trace -o ddump-rn-trace -o ddump-rn-stats -o ddump-simpl-stats -o dno-debug-output -o dppr-debug -o dppr-noprags -o dppr-user-length -o dppr-colsNNN -o dppr-case-as-let -o dsuppress-all -o dsuppress-uniques -o dsuppress-idinfo -o dsuppress-module-prefixes -o dsuppress-type-signatures -o dsuppress-type-applications -o dsuppress-coercions -o dsource-stats -o dcmm-lint -o dstg-lint -o dstg-stats -o dverbose-core2core -o dverbose-stg2stg -o dshow-passes -o dfaststring-stats --description 'Misc compiler options.'
complete -c ghc -s j -o fno-hi-version-check -o dno-black-holing -o fhistory-size -o funregisterised -o fno-ghci-history -o fno-ghci-sandbox --description 'VERBOSITY OPTIONS.'
complete -c ghc -o keep-llvm-file --description '              -keep-llvm-files  retain intermediate LLVM .'
complete -c ghc -o keep-s-file --description '              -keep-s-files  retain intermediate . s files.'
complete -c ghc -o keep-tmp-files --description 'retain all intermediate temporary files.'

